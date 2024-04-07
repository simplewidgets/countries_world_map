import 'dart:ui';
import '../shapes/shape.dart';
import 'package:flutter/cupertino.dart';

abstract class ClipShape extends Shape {
  ClipShape() : super(paint: Paint(), gestureCallbackMap: {});
}

class ClipPathShape extends ClipShape {
  final Path path;

  ClipPathShape(this.path);

  @override
  bool isInside(Offset p) {
    return path.contains(p);
  }
}
