import 'package:flutter/material.dart';
import 'dart:convert';

import '../components/canvas/touch_detector.dart';

import 'country_colors.dart';
import '../data/maps/world_map.dart';
import 'painter.dart';

/// This is the main widget that will paint the map based on the given insturctions (json).
class SimpleMap extends StatelessWidget {
  /// Default color for all countries. If not provided the default Color will be grey.
  final Color? defaultCountryColor;

  /// This is basically a list of countries and colors to apply different colors to specific countries.
  final SimpleWorldCountryColors? countryColors;

  /// Color behind the counties which will fill up all the blank space like oceans.
  final Color? backgroundColor;

  /// Triggered when a country is tapped.
  /// The first parameter is the isoCode of the country that was tapped.
  /// The second parameter is the TapUpDetails of the tap.
  final void Function(String, TapUpDetails)? callback;

  /// This is the BoxFit that will be used to fit the map in the available space.
  /// If not provided the default BoxFit will be BoxFit.contain.
  final BoxFit? fit;

  const SimpleMap({
    this.defaultCountryColor,
    this.backgroundColor,
    this.countryColors,
    this.callback,
    this.fit,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map instructions = jsonDecode(WORLD_MAP_INSTRUCTION);

    double width = instructions['width'];
    double height = instructions['height'];
    List<Map<String, dynamic>> instruction =
        List<Map<String, dynamic>>.from(instructions['instructions']);

    return FittedBox(
      fit: fit ?? BoxFit.contain,
      child: CanvasTouchDetector(
          builder: (context) => CustomPaint(
                isComplex: true,
                size: Size(width, height),
                painter: SimpleMapPainter(
                    context: context,
                    instructions: instruction,
                    callback: (country, tapdetails) {
                      if (callback != null) {
                        callback!(country, tapdetails);
                      }
                    },
                    countryColors:
                        countryColors ?? const SimpleWorldCountryColors(),
                    defaultColors: defaultCountryColor ?? Colors.grey),
              )),
    );
  }
}
