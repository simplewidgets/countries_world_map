import 'package:flutter/material.dart';

import '../types/types.dart';

class ShapeConstant {
  const ShapeConstant._();

  static const double floatPrecision = 0.001;
  static const double infinity = 9999999;
}

abstract class Shape {
  Shape({
    Paint? paint,
    Map<GestureType, Function>? gestureCallbackMap,
    HitTestBehavior? hitTestBehavior,
  })  : paint = paint ??
            (Paint()
              ..strokeWidth = ShapeConstant.floatPrecision
              ..style = PaintingStyle.fill),
        gestureCallbackMap = gestureCallbackMap ?? <GestureType, Function>{},
        hitTestBehavior = hitTestBehavior ?? HitTestBehavior.opaque {
    if (this.paint.strokeWidth == 0) {
      this.paint.strokeWidth = ShapeConstant.floatPrecision;
    }
  }

  final Paint paint;
  final Map<GestureType, Function> gestureCallbackMap;
  final HitTestBehavior hitTestBehavior;

  Set<GestureType> get registeredGestures => gestureCallbackMap.keys.toSet();

  bool isInside(Offset p);

  Function getCallbackFromGesture(Gesture gesture) {
    if (gestureCallbackMap.containsKey(gesture.gestureType)) {
      return () {
        if (gesture.gestureDetail == null) {
          return gestureCallbackMap[gesture.gestureType]?.call();
        } else {
          return gestureCallbackMap[gesture.gestureType]
              ?.call(gesture.gestureDetail);
        }
      };
    } else {
      return () {};
    }
  }
}
