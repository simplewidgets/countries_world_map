import 'shapes/clip.dart';
import 'shapes/shape.dart';
import 'shapes/util.dart';
import 'types/types.dart';
import 'package:flutter/cupertino.dart';

class ShapeHandler {
  final List<Shape> _shapeStack = [];
  final List<ClipShapeItem> clipItems = [];
  final Set<GestureType> _registeredGestures = {};

  Set<GestureType> get registeredGestures => _registeredGestures;

  void addShape(Shape shape) {
    if (shape is ClipShape) {
      clipItems.add(ClipShapeItem(shape, _shapeStack.length));
    } else {
      _shapeStack.add(shape);
      _registeredGestures.addAll(shape.registeredGestures);
    }
  }

  List<ClipShape> _getClipShapesBelowPosition(int position) {
    return clipItems.where((element) => element.position <= position).map((e) => e.clipShape).toList();
  }

  ///returns [true] if point lies inside all the clipShapes
  bool _isPointInsideClipShapes(List<ClipShape> clipShapes, Offset point) {
    for (int i = 0; i < clipShapes.length; i++) {
      if (!clipShapes[i].isInside(point)) return false;
    }
    return true;
  }

  Offset _getActualOffsetFromScrollController(Offset touchPoint, ScrollController? controller, AxisDirection direction) {
    if (controller == null) {
      return touchPoint;
    }

    final scrollPosition = controller.position;
    final actualScrollPixels =
        direction == AxisDirection.left || direction == AxisDirection.up ? scrollPosition.maxScrollExtent - scrollPosition.pixels : scrollPosition.pixels;

    if (direction == AxisDirection.left || direction == AxisDirection.right) {
      return Offset(touchPoint.dx + actualScrollPixels, touchPoint.dy);
    } else {
      return Offset(touchPoint.dx, touchPoint.dy + actualScrollPixels);
    }
  }

  List<Shape> _getTouchedShapes(Offset point) {
    var selectedShapes = <Shape>[];
    for (int i = _shapeStack.length - 1; i >= 0; i--) {
      var shape = _shapeStack[i];
      if (shape.hitTestBehavior == HitTestBehavior.deferToChild) {
        continue;
      }
      if (shape.isInside(point)) {
        if (_isPointInsideClipShapes(_getClipShapesBelowPosition(i), point) == false) {
          if (shape.hitTestBehavior == HitTestBehavior.opaque) {
            return selectedShapes;
          }
          continue;
        }
        selectedShapes.add(shape);
        if (shape.hitTestBehavior == HitTestBehavior.opaque) {
          return selectedShapes;
        }
      }
    }
    return selectedShapes;
  }

  Future<void> handleGestureEvent(
    Gesture gesture, {
    ScrollController? scrollController,
    AxisDirection direction = AxisDirection.down,
  }) async {
    var touchPoint = _getActualOffsetFromScrollController(TouchCanvasUtil.getPointFromGestureDetail(gesture.gestureDetail), scrollController, direction);
    if (!_registeredGestures.contains(gesture.gestureType)) return;

    var touchedShapes = _getTouchedShapes(touchPoint);
    if (touchedShapes.isEmpty) return;
    for (var touchedShape in touchedShapes) {
      if (touchedShape.registeredGestures.contains(gesture.gestureType)) {
        var callback = touchedShape.getCallbackFromGesture(gesture);
        callback();
      }
    }
  }
}
