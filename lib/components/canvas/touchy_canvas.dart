import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'shape_handler.dart';
import 'shapes/path.dart';
import 'shapes/shape.dart';
import 'shapes/util.dart';
import 'touch_detector.dart';
import 'types/types.dart';

class TouchyCanvas {
  ///[TouchyCanvas] helps you add gesture callbacks to the shapes you draw.
  ///
  /// [context] is the BuildContext that is obtained from the [CanvasTouchDetector] widget's builder function.
  /// The parameter [canvas] is the [Canvas] object that you get in your [paint] method inside [CustomPainter]
  TouchyCanvas({
    required BuildContext context,
    required Canvas canvas,
    required List<Shape> lastTouchedShapes,
    required final Function(List<Shape> shapes) saveTouchedShapes,
    ScrollController? scrollController,
    AxisDirection scrollDirection = AxisDirection.down,
  })  : _canvas = canvas,
        _lastTouchedShapes = lastTouchedShapes,
        _saveTouchedShapes = saveTouchedShapes {
    final TouchDetectionController? touchController =
        TouchDetectionController.of(context);
    touchController?.addListener(
      (Gesture event) => _shapeHandler.handleGestureEvent(
        event,
        scrollController: scrollController,
        direction: scrollDirection,
      ),
    );
  }

  final Canvas _canvas;
  final List<Shape> _lastTouchedShapes;
  final Function(List<Shape> shapes) _saveTouchedShapes;

  late final ShapeHandler _shapeHandler = ShapeHandler(
    _lastTouchedShapes,
    _saveTouchedShapes,
  );

  void drawCircle(Offset center, double radius, Color color) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    _canvas.drawCircle(center, radius, paint);
  }

  void drawShape(
    Path path,
    Paint paint, {
    HitTestBehavior? hitTestBehavior,
    GestureTapCallback? onTap,
    GestureTapUpCallback? onTapUp,
    GestureTapDownCallback? onTapDown,
    GestureCustomLongPressCallback? onLongPress,
    GestureLongPressEndCallback? onLongPressEnd,
    GestureLongPressCancelCallback? onLongPressCancel,
    GestureHoverCallback? onHover,
    GestureHoverEndCallback? onHoverEnd,
  }) {
    _shapeHandler.addShape(
      PathShape(
        path,
        paint: paint,
        hitTestBehavior: hitTestBehavior,
        gestureMap: TouchCanvasUtil.getGestureCallbackMap(
          onTapDown: onTapDown,
          onTapUp: onTapUp,
          onLongPress: onLongPress,
          onLongPressEnd: onLongPressEnd,
          onLongPressCancel: onLongPressCancel,
          onHover: onHover,
          onHoverEnd: onHoverEnd,
        ),
      ),
    );
  }

  void drawPath(Path path, Paint paint) {
    _canvas.drawPath(path, paint);
  }
}
