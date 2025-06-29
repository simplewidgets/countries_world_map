import 'package:flutter/material.dart';

import '../shapes/clip.dart';

typedef CustomTouchPaintBuilder = CustomPaint Function(BuildContext context);

class Gesture {
  const Gesture(this.gestureType, this.gestureDetail);

  final dynamic gestureDetail;

  final GestureType gestureType;
}

class ClipShapeItem {
  const ClipShapeItem(this.clipShape, this.position);

  final ClipShape clipShape;
  final int position;
}

enum GestureType {
  onTap,
  onTapDown,
  onTapUp,
  onLongPress,
  onLongPressEnd,
  onLongPressCancel,
  onHover,
  onHoverEnd,
}
