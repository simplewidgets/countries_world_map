import 'package:flutter/material.dart';
import '../components/canvas/touchy_canvas.dart';
import 'country_colors.dart';

/// This painter will paint a world map with all///
/// Giving countries a different color based on a data set can help visualize data.

class SimpleMapPainter extends CustomPainter {
  final List<Map<String, dynamic>> instructions;

  /// This Color is used for all the countries that have no custom color
  final Color defaultColors;
  final BuildContext context;

  /// The CountryColors is basically a list of Countries and Colors to give a Countrie a color of choice.
  final SimpleWorldCountryColors countryColors;
  final void Function(String, TapUpDetails) callback;

  final PaintingStyle? paintingStyle;
  final double? borderWidth;

  const SimpleMapPainter({
    required this.instructions,
    required this.defaultColors,
    required this.countryColors,
    required this.context,
    required this.callback,
    this.paintingStyle,
    this.borderWidth,
  });

  @override
  void paint(Canvas c, Size s) {
    TouchyCanvas canvas = TouchyCanvas(context, c);

    // Get country paths from Json
    // List countryPaths = json.decode(jsonData);
    List<CountryPath> countryPathList = <CountryPath>[];
    for (var path in instructions) {
      countryPathList.add(CountryPath.fromJson(path));
    }

    Map countryColorsMap = countryColors.toMap();

    // Draw paths
    for (int i = 0; i < countryPathList.length; i++) {
      List<String> paths = countryPathList[i].path;
      Path path = Path();

      // Read path instructions and start drawing
      for (int j = 0; j < paths.length; j++) {
        String instruction = paths[j];
        if (instruction == "c") {
          path.close();
        } else {
          List<String> coordinates = instruction.substring(1).split(',');
          double x = double.parse(coordinates[0]);
          double y = double.parse(coordinates[1]);

          if (instruction[0] == 'm') path.moveTo(s.width * x, s.height * y);
          if (instruction[0] == 'l') path.lineTo(s.width * x, s.height * y);
        }
      }

      // Add some color
      String countryCode = countryPathList[i].countryCode[0].toLowerCase() +
          countryPathList[i].countryCode[1].toUpperCase();
      Paint paint = Paint()..style = paintingStyle ?? PaintingStyle.fill;
      paint.strokeWidth = borderWidth ?? 1;
      paint.color = countryColorsMap[countryCode] ?? defaultColors;

      // Draw to canvas
      canvas.drawPath(path, paint,
          onTapUp: (tabdetail) =>
              callback(countryPathList[i].countryCode, tabdetail));
    }
  }

  @override
  bool shouldRepaint(SimpleMapPainter oldDelegate) =>
      oldDelegate.countryColors != countryColors;
}

class CountryPath {
  /// ISO code of country (2 Numbers)
  String countryCode;

  /// List of instructions to draw the country
  List<String> path;

  CountryPath({required this.countryCode, required this.path});

  // To Json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{
      "\"iso\"": "\"$countryCode\"",
      "\"p\"": path,
    };
    return data;
  }

  // From Json
  factory CountryPath.fromJson(Map<String, dynamic> json) {
    List<String> paths = <String>[];

    List jsonPaths = json['p'];

    for (int i = 0; i < jsonPaths.length; i++) {
      paths.add(jsonPaths[i]);
    }

    return CountryPath(countryCode: json['iso'], path: paths);
  }
}
