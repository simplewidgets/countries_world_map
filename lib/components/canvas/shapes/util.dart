import 'dart:math';

import 'package:flutter/gestures.dart';

import '../types/types.dart';

class ShapeUtil {
  static double distance(Offset p1, Offset p2) {
    return sqrt(pow(p2.dy - p1.dy, 2) + pow(p2.dx - p1.dx, 2));
  }
}

typedef GestureCallbackFunction = void Function();

class TouchCanvasUtil {
  static Offset getPointFromGestureDetail(dynamic gestureDetail) {
    switch (gestureDetail.runtimeType) {
      case TapDownDetails:
        return (gestureDetail as TapDownDetails).localPosition;
      case TapUpDetails:
        return (gestureDetail as TapUpDetails).localPosition;
      case LongPressStartDetails:
        return (gestureDetail as LongPressStartDetails).localPosition;
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
    required GestureLongPressEndCallback? onLongPressEnd,
    required GestureLongPressCancelCallback? onLongPressCancel,
  }) {
    final Map<GestureType, Function> map = <GestureType, Function>{};

    if (onTapDown != null) {
      map.putIfAbsent(GestureType.onTapDown, () => onTapDown);
    }

    if (onTapUp != null) map.putIfAbsent(GestureType.onTapUp, () => onTapUp);

    if (onLongPressEnd != null) {
      map.putIfAbsent(GestureType.onLongPressEnd, () => onLongPressEnd);
    }

    if (onLongPressCancel != null) {
      map.putIfAbsent(GestureType.onLongPressCancel, () => onLongPressCancel);
    }

    return map;
  }
}
