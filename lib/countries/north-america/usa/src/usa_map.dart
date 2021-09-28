import 'package:countries_world_map/canvas/touchable_canvas.dart';
import 'package:countries_world_map/countries/north-america/usa/src/usa_colors.dart';
import 'package:countries_world_map/countries/north-america/usa/src/usa_painter.dart';
import 'package:flutter/material.dart';

class USAMap extends StatelessWidget {
  /// This is the default color for all countries. If not provided the default Color will be grey.
  final Color? defaultColor;
  final Color? backgroundColor;

  /// This is basically a list of countries and colors to apply different colors to specific countries.
  final USAColors? usaColors;

  final Function(String, TapUpDetails)? callback;

  const USAMap(
      {this.backgroundColor,
      this.defaultColor,
      this.callback,
      this.usaColors,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 959 / 593,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            color: backgroundColor ?? Colors.transparent,
            child: CanvasTouchDetector(
              builder: (context) => CustomPaint(
                  isComplex: true,
                  size: Size(constraints.maxWidth, constraints.maxHeight),
                  painter: USAPainter(
                      callback: (province, details) {
                        if (callback != null) {
                          callback!(province, details);
                        }
                      },
                      context: context,
                      usaColors: usaColors ?? USAColors(),
                      defaultColor: defaultColor ?? Colors.grey)),
            ),
          );
        },
      ),
    );
  }
}
