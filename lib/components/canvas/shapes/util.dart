import 'dart:math';

import 'package:flutter/gestures.dart';

import '../types/types.dart';

class ShapeUtil {
  const ShapeUtil._();

  static double distance(Offset p1, Offset p2) {
    return sqrt(pow(p2.dy - p1.dy, 2) + pow(p2.dx - p1.dx, 2));
  }
}

typedef GestureCallbackFunction = void Function();
typedef GestureHoverCallback = void Function(Offset localPosition);
typedef GestureHoverEndCallback = void Function();
typedef GestureCustomLongPressCallback = void Function(Offset localPosition);

class TouchCanvasUtil {
  const TouchCanvasUtil._();

  static Offset getPointFromGestureDetail(dynamic gestureDetail) {
    switch (gestureDetail.runtimeType) {
      case Offset:
        return gestureDetail as Offset;
      case TapDownDetails:
        return (gestureDetail as TapDownDetails).localPosition;
      case TapUpDetails:
        return (gestureDetail as TapUpDetails).localPosition;
      case LongPressStartDetails:
        return (gestureDetail as LongPressStartDetails).localPosition;
      case LongPressMoveUpdateDetails:
        return (gestureDetail as LongPressMoveUpdateDetails).localPosition;
      case LongPressEndDetails:
        return (gestureDetail as LongPressEndDetails).localPosition;
      default:
        throw Exception(
          'gestureDetail.runTimeType = ${gestureDetail.runtimeType} is not recognized ! ',
        );
    }
  }

  static Map<GestureType, Function> getGestureCallbackMap({
    required GestureTapDownCallback? onTapDown,
    required GestureTapUpCallback? onTapUp,
    required GestureCustomLongPressCallback? onLongPress,
    required GestureLongPressEndCallback? onLongPressEnd,
    required GestureLongPressCancelCallback? onLongPressCancel,
    required GestureHoverCallback? onHover,
    required GestureHoverEndCallback? onHoverEnd,
  }) {
    final Map<GestureType, Function> map = <GestureType, Function>{};

    if (onTapDown != null) {
      map.putIfAbsent(GestureType.onTapDown, () => onTapDown);
    }

    if (onTapUp != null) {
      map.putIfAbsent(GestureType.onTapUp, () => onTapUp);
    }

    if (onLongPress != null) {
      map.putIfAbsent(GestureType.onLongPress, () => onLongPress);
    }

    if (onLongPressEnd != null) {
      map.putIfAbsent(GestureType.onLongPressEnd, () => onLongPressEnd);
    }

    if (onLongPressCancel != null) {
      map.putIfAbsent(GestureType.onLongPressCancel, () => onLongPressCancel);
    }

    if (onHover != null) {
      map.putIfAbsent(GestureType.onHover, () => onHover);
    }

    if (onHoverEnd != null) {
      map.putIfAbsent(GestureType.onHoverEnd, () => onHoverEnd);
    }

    return map;
  }
}
