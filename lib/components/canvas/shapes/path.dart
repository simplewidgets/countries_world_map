import 'package:flutter/cupertino.dart';

import '../shapes/shape.dart';
import '../types/types.dart';

class PathShape extends Shape {
  PathShape(
    this.path, {
    required Map<GestureType, Function> gestureMap,
    required Paint paint,
    HitTestBehavior? hitTestBehavior,
    PaintingStyle? paintStyleForTouch,
  }) : super(
          hitTestBehavior: hitTestBehavior,
          paint: paint,
          gestureCallbackMap: gestureMap,
        );
  final Path path;

  @override
  bool isInside(Offset p) {
    return path.contains(p);
  }
}
