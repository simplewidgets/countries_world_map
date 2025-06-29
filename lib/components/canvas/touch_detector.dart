import 'dart:async';

import 'package:flutter/material.dart';

import 'types/types.dart';

///[CanvasTouchDetector] widget detects the gestures on your [CustomPaint] widget.
///
/// Wrap your [CustomPaint] widget with [CanvasTouchDetector]
/// The [builder] function passes the [BuildContext] and expects a [CustomPaint] object as its return value.
class CanvasTouchDetector extends StatefulWidget {
  const CanvasTouchDetector({Key? key, required this.builder})
      : super(key: key);
  final CustomTouchPaintBuilder builder;

  @override
  State<CanvasTouchDetector> createState() => _CanvasTouchDetectorState();
}

class _CanvasTouchDetectorState extends State<CanvasTouchDetector> {
  final StreamController<Gesture> touchController =
      StreamController<Gesture>.broadcast();
  StreamSubscription<void>? streamSubscription;

  Future<void> addStreamListener(Function(Gesture) callBack) async {
    await streamSubscription?.cancel();
    streamSubscription = touchController.stream.listen(callBack);
  }

  Offset? _widgetPosition;

  @override
  Widget build(BuildContext context) {
    return TouchDetectionController(
      touchController,
      addStreamListener,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        child: Builder(
          builder: (BuildContext context) => widget.builder(context),
        ),
        onTapDown: (TapDownDetails tapDetail) {
          touchController.add(Gesture(GestureType.onTapDown, tapDetail));
        },
        onTapUp: (TapUpDetails tapDetail) {
          touchController.add(Gesture(GestureType.onTapUp, tapDetail));
        },
        onTapCancel: () {
          touchController.add(const Gesture(GestureType.onTapCancel, null));
        },
        onLongPressStart: (LongPressStartDetails tapDetail) {
          _widgetPosition = tapDetail.globalPosition;
        },
        onLongPressEnd: (LongPressEndDetails tapDetail) {
          touchController.add(Gesture(GestureType.onLongPressEnd, tapDetail));
        },
        onLongPressCancel: () {
          touchController
              .add(const Gesture(GestureType.onLongPressCancel, null));
        },
        onLongPressMoveUpdate: (LongPressMoveUpdateDetails tapDetail) {
          if (_widgetPosition == null) return;
          final RenderBox renderBox = context.findRenderObject() as RenderBox;
          final Size size = renderBox.size;
          final Offset offset = renderBox.localToGlobal(Offset.zero);
          final Rect rect = offset & size;

          if (!rect.contains(tapDetail.globalPosition)) {
            _widgetPosition = null;
            touchController
                .add(const Gesture(GestureType.onLongPressCancel, null));
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    touchController.close();
    super.dispose();
  }
}

class TouchDetectionController extends InheritedWidget {
  const TouchDetectionController(
    this._controller,
    this.addListener, {
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final StreamController<Gesture> _controller;
  final Function addListener;

  bool get hasListener => _controller.hasListener;

  StreamController<Gesture> get controller => _controller;

  static TouchDetectionController? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<TouchDetectionController>();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
