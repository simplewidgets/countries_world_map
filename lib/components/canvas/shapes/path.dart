import '../shapes/shape.dart';
import 'package:flutter/cupertino.dart';
import '../types/types.dart';

class PathShape extends Shape {
  final Path path;

  PathShape(this.path,
      {required Map<GestureType, Function> gestureMap,
      required Paint paint,
      HitTestBehavior? hitTestBehavior,
      PaintingStyle? paintStyleForTouch})
      : super(
            hitTestBehavior: hitTestBehavior,
            paint: paint,
            gestureCallbackMap: gestureMap);

  @override
  bool isInside(Offset p) {
    return path.contains(p);
  }
}
