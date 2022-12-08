import 'package:countries_world_map/canvas/touchable_canvas.dart';
import 'package:flutter/material.dart';
import 'simple_world_colors.dart';
import './painter/i1.dart';
import './painter/i2.dart';
import './painter/i3.dart';
import './painter/i4.dart';
import './painter/i5.dart';
import './painter/i6.dart';
import './painter/i7.dart';
import './painter/i8.dart';
import './painter/i9.dart';

/// This painter will paint a world map with all///
/// Giving countries a different color based on a data set can help visualize data.

class SimpleWorldPainter extends CustomPainter {
  /// This Color is used for all the countries that have no custom color
  final Color dfltClr;
  final BuildContext ctx;

  /// The CountryColors is basically a list of Countries and Colors to give a Countrie a color of choice.
  final SimpleWorldCountryColors cClrs;
  final Function(String, TapUpDetails) callback;

  const SimpleWorldPainter(
      {required this.dfltClr,
      required this.cClrs,
      required this.ctx,
      required this.callback});
// ignore_for_file: avoid_renaming_method_parameters
  @override
  void paint(Canvas c, Size s) {
    var canvas = TouchyCanvas(ctx, c);
    iOne(s, canvas, cClrs, dfltClr, callback);
    iTwo(s, canvas, cClrs, dfltClr, callback);
    iThree(s, canvas, cClrs, dfltClr, callback);
    iFour(s, canvas, cClrs, dfltClr, callback);
    iFive(s, canvas, cClrs, dfltClr, callback);
    iSix(s, canvas, cClrs, dfltClr, callback);
    iSeven(s, canvas, cClrs, dfltClr, callback);
    iEight(s, canvas, cClrs, dfltClr, callback);
    iNine(s, canvas, cClrs, dfltClr, callback);
  }

  @override
  bool shouldRepaint(SimpleWorldPainter oldDelegate) =>
      oldDelegate.cClrs != cClrs;
}
