import 'package:flutter/cupertino.dart';

import 'shapes/clip.dart';
import 'shapes/shape.dart';
import 'shapes/util.dart';
import 'types/types.dart';

class ShapeHandler {
  ShapeHandler(this._lastTouchedShapes, this._saveTouchedShapes);

  final List<Shape> _shapeStack = <Shape>[];
  final List<ClipShapeItem> clipItems = <ClipShapeItem>[];
  final Set<GestureType> _registeredGestures = <GestureType>{};
  List<Shape> _lastTouchedShapes;
  final void Function(List<Shape> shapes) _saveTouchedShapes;

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
    return clipItems
        .where((ClipShapeItem element) => element.position <= position)
        .map((ClipShapeItem e) => e.clipShape)
        .toList();
  }

  ///returns [true] if point lies inside all the clipShapes
  bool _isPointInsideClipShapes(List<ClipShape> clipShapes, Offset point) {
    for (int i = 0; i < clipShapes.length; i++) {
      if (!clipShapes[i].isInside(point)) return false;
    }
    return true;
  }

  Offset _getActualOffsetFromScrollController(
    Offset touchPoint,
    ScrollController? controller,
    AxisDirection direction,
  ) {
    if (controller == null) {
      return touchPoint;
    }

    final ScrollPosition scrollPosition = controller.position;
    final double actualScrollPixels =
        direction == AxisDirection.left || direction == AxisDirection.up
            ? scrollPosition.maxScrollExtent - scrollPosition.pixels
            : scrollPosition.pixels;

    if (direction == AxisDirection.left || direction == AxisDirection.right) {
      return Offset(touchPoint.dx + actualScrollPixels, touchPoint.dy);
    } else {
      return Offset(touchPoint.dx, touchPoint.dy + actualScrollPixels);
    }
  }

  List<Shape> _getTouchedShapes(Offset point) {
    final List<Shape> selectedShapes = <Shape>[];
    for (int i = _shapeStack.length - 1; i >= 0; i--) {
      final Shape shape = _shapeStack[i];
      if (shape.hitTestBehavior == HitTestBehavior.deferToChild) {
        continue;
      }
      if (shape.isInside(point)) {
        if (_isPointInsideClipShapes(_getClipShapesBelowPosition(i), point) ==
            false) {
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
    final Offset? touchPoint = gesture.gestureDetail == null
        ? null
        : _getActualOffsetFromScrollController(
            TouchCanvasUtil.getPointFromGestureDetail(gesture.gestureDetail),
            scrollController,
            direction,
          );

    if (!_registeredGestures.contains(gesture.gestureType)) return;

    List<Shape>? touchedShapes =
        touchPoint == null ? null : _getTouchedShapes(touchPoint);

    if (touchedShapes == null || touchedShapes.isEmpty) {
      touchedShapes = _lastTouchedShapes;
    } else {
      _lastTouchedShapes = touchedShapes;
    }

    if (touchedShapes.isEmpty) return;
    _saveTouchedShapes(touchedShapes);

    for (final Shape touchedShape in touchedShapes) {
      if (touchedShape.registeredGestures.contains(gesture.gestureType)) {
        final Function callback = touchedShape.getCallbackFromGesture(gesture);
        callback();
      }
    }
  }
}
