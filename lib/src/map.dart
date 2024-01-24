import 'package:countries_world_map/countries_world_map.dart';
import 'package:flutter/material.dart';
import '../components/canvas/touch_detector.dart';
import 'painter.dart';

/// This is the main widget that will paint the map based on the given insturctions (json).
class SimpleMap extends StatelessWidget {
  final String instructions;

  final CountryBorder? countryBorder;

  /// Default color for all countries. If not provided the default Color will be grey.
  final Color? defaultColor;

  /// This is basically a list of countries and colors to apply different colors to specific countries.
  final Map? colors;

  final List<SimpleMapMarker>? markers;

  /// Triggered when a country is tapped.
  /// The first parameter is the isoCode of the country that was tapped.
  /// The second parameter is the TapUpDetails of the tap.
  final void Function(String id, String name, TapUpDetails tapDetails)?
      callback;

  /// This is the BoxFit that will be used to fit the map in the available space.
  /// If not provided the default BoxFit will be BoxFit.contain.
  final BoxFit? fit;

  const SimpleMap({
    required this.instructions,
    this.markers,
    this.defaultColor,
    this.colors,
    this.callback,
    this.fit,
    this.countryBorder,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Map map = jsonDecode(instructions);

    MapAttributes attributes = MapAttributes(instructions);

    // double width = double.parse(map['w'].toString());
    // double height = double.parse(map['h'].toString());
    // List<Map<String, dynamic>> instruction =
    //     List<Map<String, dynamic>>.from(map['i']);

    return FittedBox(
      fit: fit ?? BoxFit.contain,
      child: SizedBox(
        width: attributes.mapWidth,
        height: attributes.mapHeight,
        child: Stack(children: [
          RepaintBoundary(
              child: CanvasTouchDetector(
                  builder: (context) => CustomPaint(
                        isComplex: true,
                        size: Size(attributes.mapWidth, attributes.mapHeight),
                        painter: SimpleMapPainter(
                            context: context,
                            drawingInstructions: attributes.drawingInstructions,
                            callback: (id, name, tapdetails) {
                              if (callback != null) {
                                callback!(id, name, tapdetails);
                              }
                            },
                            countryBorder: countryBorder,
                            colors: colors,
                            defaultColor: defaultColor ?? Colors.grey),
                      ))),
          for (SimpleMapMarker mark in markers ?? [])
            Builder(
              builder: (context) {
                Size position = attributes.latLongToPixels(mark.latLong);

                return Positioned(
                    left: position.width - (mark.markerSize.width / 2),
                    top: position.height - (mark.markerSize.height / 2),
                    child: SizedBox(
                      width: mark.markerSize.width,
                      height: mark.markerSize.height,
                      child: mark.marker,
                    ));
              },
            )
        ]),
      ),
    );
  }
}

class CountryBorder {
  final Color color;
  final double width;

  const CountryBorder({
    required this.color,
    this.width = 1,
  });
}

class SimpleMapMarker {
  final Size markerSize;
  final LatLong latLong;
  final Widget marker;

  const SimpleMapMarker({
    required this.markerSize,
    required this.latLong,
    required this.marker,
  });
}
