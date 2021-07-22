import 'package:countries_world_map/countries_colors.dart';
import 'package:countries_world_map/world_map_painter.dart';
import 'package:flutter/material.dart';

class WorldMap extends StatelessWidget {
  final Color? defaultCountryColor;
  final CountryColors? countryColors;
  final Color? backgroundColor;

  const WorldMap(
      {this.defaultCountryColor,
      this.backgroundColor,
      this.countryColors,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2000 / 857,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            color: backgroundColor ?? Colors.transparent,
            child: RepaintBoundary(
              child: CustomPaint(
                isComplex: true,
                size: Size(constraints.maxWidth, constraints.maxHeight),
                painter: WorldMapPainter(
                    countryColors: countryColors ?? CountryColors(),
                    defaultCountryColor: defaultCountryColor ?? Colors.grey),
              ),
            ),
          );
        },
      ),
    );
  }
}
