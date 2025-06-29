import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../shapes/shape.dart';
import '../types/types.dart';

abstract class ClipShape extends Shape {
  ClipShape()
      : super(paint: Paint(), gestureCallbackMap: <GestureType, Function>{});
}

class ClipPathShape extends ClipShape {
  ClipPathShape(this.path);

  final Path path;

  @override
  bool isInside(Offset p) {
    return path.contains(p);
  }
}
