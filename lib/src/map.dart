import 'package:flutter/material.dart';

import '../components/canvas/shapes/shape.dart';
import '../components/canvas/touch_detector.dart';
import '../countries_world_map.dart';
import 'helpers/interactive_map_item.dart';
import 'helpers/map_instructions.dart';
import 'painter.dart';

/// This is the main widget that will paint the map based on the given insturctions (json).
class SimpleMap extends StatefulWidget {
  const SimpleMap({
    required this.instructions,
    this.onHover,
    this.markers,
    this.defaultColor,
    this.splashColor,
    this.splashDuration,
    this.colors,
    this.callback,
    this.fit,
    this.countryBorder,
    Key? key,
  }) : super(key: key);

  final String instructions;
  final CountryBorder? countryBorder;
  final Color? defaultColor;
  final Color? splashColor;
  final Duration? splashDuration;
  final Map<String, Color?>? colors;
  final List<SimpleMapMarker>? markers;
  final void Function(String id, String name, bool isHovering)? onHover;
  final void Function(String id, String name, TouchDetails tapDetails)?
      callback;
  final BoxFit? fit;

  @override
  State<SimpleMap> createState() => _SimpleMapState();
}

class _SimpleMapState extends State<SimpleMap> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _radiusAnimation;
  Offset? rippleCenter;
  String? departmentId;
  List<Shape> lastTouchedShapes = <Shape>[];

  void saveTouchedShapes(List<Shape> shapes) {
    lastTouchedShapes = shapes;
    if (mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.splashDuration ?? kThemeAnimationDuration,
      vsync: this,
    );
    _radiusAnimation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() => setState(() {}));
  }

  void _startRipple(Offset position, String id) {
    _controller.reset();
    _controller.forward();

    rippleCenter = position;
    departmentId = id;
  }

  void _stopRipple(String id) {
    // An other ripple is ongoing
    if (_controller.isAnimating) return;
    _controller.reset();

    departmentId = null;
    rippleCenter = null;
    lastTouchedShapes = <Shape>[];
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final MapAttributes attributes = MapAttributes(widget.instructions);
    final List<SimpleMapInstruction> countryPathList = <SimpleMapInstruction>[];

    if (widget.onHover != null) {
      for (final Map<String, dynamic> path in attributes.drawingInstructions) {
        countryPathList.add(SimpleMapInstruction.fromJson(path));
      }
    }

    return FittedBox(
      fit: widget.fit ?? BoxFit.contain,
      child: SizedBox(
        width: attributes.mapWidth,
        height: attributes.mapHeight,
        child: Stack(
          children: <Widget>[
            if (widget.onHover == null)
              RepaintBoundary(
                child: CanvasTouchDetector(
                  builder: (BuildContext context) => CustomPaint(
                    isComplex: true,
                    size: Size(attributes.mapWidth, attributes.mapHeight),
                    painter: SimpleMapPainter(
                      context: context,
                      drawingInstructions: attributes.drawingInstructions,
                      onLongPressCancel: (String id) {
                        _stopRipple(id);
                      },
                      onLongPressEnd: (
                        String id,
                        String name,
                        LongPressEndDetails details,
                      ) {
                        _stopRipple(id);
                      },
                      onTapDown: (String id, TapDownDetails details) {
                        _startRipple(details.localPosition, id);
                      },
                      onTapUp: (String id, String name, TapUpDetails details) {
                        if (widget.callback != null && id == departmentId) {
                          widget.callback!(
                            id,
                            name,
                            TouchDetails(
                              globalPosition: details.globalPosition,
                              localPosition: details.localPosition,
                            ),
                          );
                        }
                      },
                      rippleCenter: rippleCenter,
                      rippleRadiusPercentage: _radiusAnimation.value,
                      countryBorder: widget.countryBorder,
                      rippleTargetId: departmentId,
                      lastTouchedShapes: lastTouchedShapes,
                      saveTouchedShapes: saveTouchedShapes,
                      colors: widget.colors,
                      defaultColor: widget.defaultColor ?? Colors.grey,
                      splashColor: widget.splashColor,
                    ),
                  ),
                ),
              ),
            if (widget.onHover != null)
              for (int i = 0; i < countryPathList.length; i++)
                InteractiveMapItem(
                  key: Key('${countryPathList[i].uniqueID}-$i'),
                  callback: widget.callback,
                  onHover: widget.onHover,
                  color: widget.colors?[countryPathList[i].uniqueID],
                  defaultColor: widget.defaultColor,
                  countryPathList: countryPathList,
                  i: i,
                ),
            for (final SimpleMapMarker mark
                in widget.markers ?? <SimpleMapMarker>[])
              Builder(
                builder: (BuildContext context) {
                  final Size position =
                      attributes.latLongToPixels(mark.latLong);
                  return Positioned(
                    left: position.width - (mark.markerSize.width / 2),
                    top: position.height - (mark.markerSize.height / 2),
                    child: SizedBox(
                      width: mark.markerSize.width,
                      height: mark.markerSize.height,
                      child: mark.marker,
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}

class CountryBorder {
  const CountryBorder({
    required this.color,
    this.width = 1,
  });

  final Color color;
  final double width;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CountryBorder &&
          runtimeType == other.runtimeType &&
          color == other.color &&
          width == other.width;

  @override
  int get hashCode => Object.hash(color, width);
}

class SimpleMapMarker {
  const SimpleMapMarker({
    required this.markerSize,
    required this.latLong,
    required this.marker,
  });

  final Size markerSize;
  final LatLong latLong;
  final Widget marker;
}

class TouchDetails {
  const TouchDetails({
    this.globalPosition = Offset.zero,
    Offset? localPosition,
  }) : localPosition = localPosition ?? globalPosition;

  final Offset globalPosition;

  final Offset localPosition;
}
