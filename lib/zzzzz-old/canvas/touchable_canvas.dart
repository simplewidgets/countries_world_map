/// This libabry was forked from the [touchable package](https://pub.dev/packages/touchable "Touchable | pub.dev") and has been adjusted to fit this usecase.
///
/// Amazing work has been done by Natesh Bhat https://github.com/nateshmbhat/touchable for making CustomPaints touchable.
/// For this project however only the shape PATH is required so the other shapes like Rectangle, Circle, etc. has been removed.
/// Other unnecessary resources has been removed as well and some code has been changed.
///
/// The toucheble_canvas library makes it possible to select individual countries/ states on the map.
/// When tapping/clicking on a item there will be a callback of type String & TapDetails which you can use to display information..

library touchable_canvas;

export 'src/canvas_touch_detector.dart';
export 'src/touchy_canvas.dart';
export 'src/types/types.dart';
