import 'dart:ui';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:countries_world_map/canvas/src/canvas_touch_detector.dart';
import 'package:countries_world_map/canvas/src/shape_handler.dart';
import 'package:countries_world_map/canvas/src/shapes/path.dart';
import 'package:countries_world_map/canvas/src/shapes/util.dart';

class TouchyCanvas {
  final Canvas _canvas;

  final ShapeHandler _shapeHandler = ShapeHandler();

  ///[TouchyCanvas] helps you add gesture callbacks to the shapes you draw.
  ///
  /// [context] is the BuildContext that is obtained from the [CanvasTouchDetector] widget's builder function.
  /// The parameter [canvas] is the [Canvas] object that you get in your [paint] method inside [CustomPainter]
  TouchyCanvas(
    BuildContext context,
    this._canvas, {
    ScrollController? scrollController,
    AxisDirection scrollDirection = AxisDirection.down,
  }) {
    var touchController = TouchDetectionController.of(context);
    touchController?.addListener((event) {
      _shapeHandler.handleGestureEvent(
        event,
        scrollController: scrollController,
        direction: scrollDirection,
      );
    });
  }

  void drawPath(
    Path path,
    Paint paint, {
    HitTestBehavior? hitTestBehavior,
    GestureTapDownCallback? onTapDown,
    PaintingStyle? paintStyleForTouch,
    GestureTapUpCallback? onTapUp,
    GestureLongPressStartCallback? onLongPressStart,
    GestureLongPressEndCallback? onLongPressEnd,
    GestureLongPressMoveUpdateCallback? onLongPressMoveUpdate,
    GestureForcePressStartCallback? onForcePressStart,
    GestureForcePressEndCallback? onForcePressEnd,
    GestureForcePressPeakCallback? onForcePressPeak,
    GestureForcePressUpdateCallback? onForcePressUpdate,
    GestureDragStartCallback? onPanStart,
    GestureDragUpdateCallback? onPanUpdate,
    GestureDragDownCallback? onPanDown,
    GestureTapDownCallback? onSecondaryTapDown,
    GestureTapUpCallback? onSecondaryTapUp,
  }) {
    _canvas.drawPath(path, paint);
    _shapeHandler.addShape(PathShape(path,
        paint: paint,
        hitTestBehavior: hitTestBehavior,
        gestureMap: TouchCanvasUtil.getGestureCallbackMap(
          onTapDown: onTapDown,
          onTapUp: onTapUp,
          onLongPressStart: onLongPressStart,
          onLongPressEnd: onLongPressEnd,
          onLongPressMoveUpdate: onLongPressMoveUpdate,
          onForcePressStart: onForcePressStart,
          onForcePressEnd: onForcePressEnd,
          onForcePressPeak: onForcePressPeak,
          onForcePressUpdate: onForcePressUpdate,
          onPanStart: onPanStart,
          onPanUpdate: onPanUpdate,
          onPanDown: onPanDown,
          onSecondaryTapDown: onSecondaryTapDown,
          onSecondaryTapUp: onSecondaryTapUp,
        )));
  }
}
