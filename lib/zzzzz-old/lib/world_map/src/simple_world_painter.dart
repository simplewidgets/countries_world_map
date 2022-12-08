import 'package:countries_world_map/zzzzz-old/lib/world_map/canvas/src/touchy_canvas.dart';
import 'package:flutter/material.dart';

import 'simple_world_colors.dart';

/// This painter will paint a world map with all///
/// Giving countries a different color based on a data set can help visualize data.

// class SimpleWorldPainter extends CustomPainter {
//   /// This Color is used for all the countries that have no custom color
//   final Color defaultColors;
//   final BuildContext context;

//   /// The CountryColors is basically a list of Countries and Colors to give a Countrie a color of choice.
//   final SimpleWorldCountryColors countryColors;
//   final Function(String, TapUpDetails) callback;

//   const SimpleWorldPainter(
//       {required this.defaultColors,
//       required this.countryColors,
//       required this.context,
//       required this.callback});
// // ignore_for_file: avoid_renaming_method_parameters
//   @override
//   void paint(Canvas c, Size s) {
//     var canvas = TouchyCanvas(context, c);
//     // var recorder = ui.PictureRecorder();
//     // Canvas canvas = Canvas(recorder);

//     iOne(s, canvas, countryColors, defaultColors, callback);
//     iTwo(s, canvas, countryColors, defaultColors, callback);
//     iThree(s, canvas, countryColors, defaultColors, callback);
//     iFour(s, canvas, countryColors, defaultColors, callback);
//     iFive(s, canvas, countryColors, defaultColors, callback);
//     iSix(s, canvas, countryColors, defaultColors, callback);
//     iSeven(s, canvas, countryColors, defaultColors, callback);
//     iEight(s, canvas, countryColors, defaultColors, callback);
//     iNine(s, canvas, countryColors, defaultColors, callback);
//   }

//   @override
//   bool shouldRepaint(SimpleWorldPainter oldDelegate) =>
//       oldDelegate.countryColors != countryColors;
// }

class NewSimpleWorldPainter extends CustomPainter {
  final List<Map<String, dynamic>> instructions;

  /// This Color is used for all the countries that have no custom color
  final Color defaultColors;
  final BuildContext context;

  /// The CountryColors is basically a list of Countries and Colors to give a Countrie a color of choice.
  final SimpleWorldCountryColors countryColors;
  final Function(String, TapUpDetails) callback;

  const NewSimpleWorldPainter({
    required this.instructions,
    required this.defaultColors,
    required this.countryColors,
    required this.context,
    required this.callback,
  });
// ignore_for_file: avoid_renaming_method_parameters
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
      Paint paint = Paint()..style = PaintingStyle.fill;
      paint.color = countryColorsMap[countryCode] ?? defaultColors;

      // Draw to canvas
      canvas.drawPath(path, paint, onTapUp: (tabdetail) {
        callback(countryPathList[i].countryCode, tabdetail);
      });
    }
  }

  @override
  bool shouldRepaint(NewSimpleWorldPainter oldDelegate) =>
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
