import 'package:countries_world_map/countries_colors.dart';
import 'package:countries_world_map/world_map_painter.dart';
import 'package:flutter/material.dart';

class WorldMap extends StatefulWidget {
  final Color? color;
  final CountryColors? countryColors;
  final double? width;

  WorldMap({this.color, this.countryColors, this.width, Key? key})
      : super(key: key);

  @override
  _WorldMapState createState() => _WorldMapState();
}

class _WorldMapState extends State<WorldMap> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(widget.width ?? MediaQuery.of(context).size.width,
          widget.width ?? MediaQuery.of(context).size.width / 2000 * 857),
      painter: WorldMapPainter(
          countryColors: widget.countryColors ?? new CountryColors(),
          backgroundColor: widget.color ?? Colors.grey),
    );
  }
}
