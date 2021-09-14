import 'package:countries_world_map/canvas/touchable_canvas.dart';
import 'package:countries_world_map/countries/asia/japan/src/japan_colors.dart';
import 'package:countries_world_map/countries/asia/japan/src/japan_painter.dart';
import 'package:flutter/material.dart';

class JapanMap extends StatelessWidget {
  /// This is the default color for all countries. If not provided the default Color will be grey.
  final Color? defaultColor;
  final Color? backgroundColor;

  /// This is basically a list of countries and colors to apply different colors to specific countries.
  final JapanColors? japanColors;

  final Function(String, TapUpDetails)? callback;

  const JapanMap(
      {this.backgroundColor,
      this.defaultColor,
      this.callback,
      this.japanColors,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 437.33432 / 516.01587,
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
                  painter: JapanPainter(
                      callback: (province, details) {
                        if (callback != null) {
                          callback!(province, details);
                        }
                      },
                      context: context,
                      japanColors: japanColors ?? JapanColors(),
                      defaultColor: defaultColor ?? Colors.grey)),
            ),
          );
        },
      ),
    );
  }
}
