import 'package:flutter/material.dart';
import '../components/canvas/touchy_canvas.dart';

/// This painter will paint a world map with all///
/// Giving countries a different color based on a data set can help visualize data.

class SimpleMapPainter extends CustomPainter {
  final List<Map<String, dynamic>> instructions;

  /// This Color is used for all the countries that have no custom color
  final Color defaultColor;
  final BuildContext context;

  /// The CountryColors is basically a list of Countries and Colors to give a Countrie a color of choice.
  final Map? colors;
  final void Function(String id, String name, TapUpDetails tapUpDetails)
      callback;

  final PaintingStyle? paintingStyle;
  final double? borderWidth;

  const SimpleMapPainter({
    required this.instructions,
    required this.defaultColor,
    this.colors,
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
    List<SimpleMapInstruction> countryPathList = <SimpleMapInstruction>[];
    for (var path in instructions) {
      countryPathList.add(SimpleMapInstruction.fromJson(path));
    }

    // Draw paths
    for (int i = 0; i < countryPathList.length; i++) {
      List<String> paths = countryPathList[i].instructions;
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
      String uniqueID = countryPathList[i].uniqueID;
      Paint paint = Paint()..style = paintingStyle ?? PaintingStyle.fill;
      paint.strokeWidth = borderWidth ?? 1;
      paint.color = colors?[uniqueID] ?? defaultColor;

      // Draw to canvas
      canvas.drawPath(path, paint,
          onTapUp: (tabdetail) => callback(
              countryPathList[i].uniqueID, countryPathList[i].name, tabdetail));
    }
  }

  @override
  bool shouldRepaint(SimpleMapPainter oldDelegate) =>
      oldDelegate.colors != colors;
}

class SimpleMapInstruction {
  /// uniqueID of the territory being drawn
  String uniqueID;

  /// Name of the territory being drawn
  String name;

  /// List of instructions to draw the territory
  List<String> instructions;

  SimpleMapInstruction(
      {required this.uniqueID, required this.instructions, required this.name});

  // To Json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{
      "\"n\"": "\"$name\"",
      "\"u\"": "\"$uniqueID\"",
      "\"i\"": instructions,
    };
    return data;
  }

  // From Json
  factory SimpleMapInstruction.fromJson(Map<String, dynamic> json) {
    List<String> paths = <String>[];

    List jsonPaths = json['i'];

    for (int i = 0; i < jsonPaths.length; i++) {
      paths.add(jsonPaths[i]);
    }

    return SimpleMapInstruction(
        uniqueID: json['u'], name: json['n'], instructions: paths);
  }
}
