import 'dart:async';

import 'package:flutter/gestures.dart';
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

  @override
  Widget build(BuildContext context) {
    return TouchDetectionController(
      touchController,
      addStreamListener,
      child: MouseRegion(
        opaque: false,
        hitTestBehavior: HitTestBehavior.translucent,
        onHover: (PointerHoverEvent event) {
          touchController.add(
            Gesture(GestureType.onHover, event.localPosition),
          );
        },
        onExit: (PointerExitEvent event) {
          touchController.add(const Gesture(GestureType.onHoverEnd, null));
        },
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
          onLongPressStart: (LongPressStartDetails tapDetail) {
            touchController
                .add(Gesture(GestureType.onLongPress, tapDetail.localPosition));
          },
          onLongPressEnd: (LongPressEndDetails tapDetail) {
            touchController.add(Gesture(GestureType.onLongPressEnd, tapDetail));
          },
          onLongPressCancel: () {
            touchController
                .add(const Gesture(GestureType.onLongPressCancel, null));
          },
          onLongPressMoveUpdate: (LongPressMoveUpdateDetails tapDetail) {
            touchController
                .add(Gesture(GestureType.onLongPress, tapDetail.localPosition));
          },
        ),
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
