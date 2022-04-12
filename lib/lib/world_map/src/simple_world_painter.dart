import 'package:countrie_counter/components/world_map/canvas/src/touchy_canvas.dart';
import 'package:countrie_counter/components/world_map/src/painter/i1.dart';
import 'package:countrie_counter/components/world_map/src/painter/i2.dart';
import 'package:countrie_counter/components/world_map/src/painter/i3.dart';
import 'package:countrie_counter/components/world_map/src/painter/i4.dart';
import 'package:countrie_counter/components/world_map/src/painter/i5.dart';
import 'package:countrie_counter/components/world_map/src/painter/i6.dart';
import 'package:countrie_counter/components/world_map/src/painter/i7.dart';
import 'package:countrie_counter/components/world_map/src/painter/i8.dart';
import 'package:countrie_counter/components/world_map/src/painter/i9.dart';
import 'package:countrie_counter/components/world_map/src/simple_world_colors.dart';
import 'package:flutter/material.dart';

/// This painter will paint a world map with all///
/// Giving countries a different color based on a data set can help visualize data.

class SimpleWorldPainter extends CustomPainter {
  /// This Color is used for all the countries that have no custom color
  final Color defaultColors;
  final BuildContext context;

  /// The CountryColors is basically a list of Countries and Colors to give a Countrie a color of choice.
  final SimpleWorldCountryColors countryColors;
  final Function(String, TapUpDetails) callback;

  const SimpleWorldPainter(
      {required this.defaultColors,
      required this.countryColors,
      required this.context,
      required this.callback});
// ignore_for_file: avoid_renaming_method_parameters
  @override
  void paint(Canvas c, Size s) {
    var canvas = TouchyCanvas(context, c);
    // var recorder = ui.PictureRecorder();
    // Canvas canvas = Canvas(recorder);

    iOne(s, canvas, countryColors, defaultColors, callback);
    iTwo(s, canvas, countryColors, defaultColors, callback);
    iThree(s, canvas, countryColors, defaultColors, callback);
    iFour(s, canvas, countryColors, defaultColors, callback);
    iFive(s, canvas, countryColors, defaultColors, callback);
    iSix(s, canvas, countryColors, defaultColors, callback);
    iSeven(s, canvas, countryColors, defaultColors, callback);
    iEight(s, canvas, countryColors, defaultColors, callback);
    iNine(s, canvas, countryColors, defaultColors, callback);
  }

  @override
  bool shouldRepaint(SimpleWorldPainter oldDelegate) =>
      oldDelegate.countryColors != countryColors;
}
