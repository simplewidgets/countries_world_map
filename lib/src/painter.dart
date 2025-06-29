import 'package:flutter/material.dart';

import '../components/canvas/shapes/shape.dart';
import '../components/canvas/touchy_canvas.dart';
import '../countries_world_map.dart';
import 'helpers/map_instructions.dart';

/// This painter will paint a world map with all///
/// Giving countries a different color based on a data set can help visualize data.

class SimpleMapPainter extends CustomPainter {
  const SimpleMapPainter({
    required this.drawingInstructions,
    required this.defaultColor,
    this.colors,
    required this.context,
    required this.onTapUp,
    required this.onTapDown,
    required this.onLongPressEnd,
    required this.onLongPressCancel,
    this.countryBorder,
    required this.rippleCenter,
    required this.rippleRadiusPercentage,
    required this.rippleTargetId,
    required this.lastTouchedShapes,
    required this.saveTouchedShapes,
    this.splashColor,
  });

  final List<Map<String, dynamic>> drawingInstructions;

  /// This Color is used for all the countries that have no custom color
  final Color defaultColor;
  final BuildContext context;

  /// The CountryColors is basically a list of Countries and Colors to give a Countrie a color of choice.
  final Map<String, Color?>? colors;
  final void Function(String id, String name, TapUpDetails tapUpDetails)
      onTapUp;
  final void Function(String id, TapDownDetails details) onTapDown;
  final void Function(String id, String name, LongPressEndDetails details)
      onLongPressEnd;

  final void Function(String id) onLongPressCancel;

  final CountryBorder? countryBorder;

  final Color? splashColor;
  final Offset? rippleCenter;
  final double rippleRadiusPercentage;
  final String? rippleTargetId;
  final List<Shape> lastTouchedShapes;
  final void Function(List<Shape> shapes) saveTouchedShapes;

  @override
  void paint(Canvas c, Size s) {
    final TouchyCanvas canvas = TouchyCanvas(
      context: context,
      canvas: c,
      lastTouchedShapes: lastTouchedShapes,
      saveTouchedShapes: saveTouchedShapes,
    );

    // Draw background Path
    final Path backgroundPath = Path();
    backgroundPath.moveTo(0, 0);
    backgroundPath.lineTo(s.width, 0);
    backgroundPath.lineTo(s.width, s.height);
    backgroundPath.lineTo(0, s.height);
    canvas.drawPath(
      backgroundPath,
      Paint()..color = Colors.transparent,
      onTapUp: (TapUpDetails details) => onTapUp('', '', details),
    );

    // Get country paths from Json
    // List countryPaths = json.decode(jsonData);
    final List<SimpleMapInstruction> countryPathList = <SimpleMapInstruction>[];
    for (final Map<String, dynamic> path in drawingInstructions) {
      countryPathList.add(SimpleMapInstruction.fromJson(path));
    }

    // Draw paths
    for (int i = 0; i < countryPathList.length; i++) {
      final List<String> paths = countryPathList[i].instructions;
      final Path path = Path();

      // Read path instructions and start drawing
      for (int j = 0; j < paths.length; j++) {
        final String instruction = paths[j];
        if (instruction == 'c') {
          path.close();
        } else {
          final List<String> coordinates = instruction.substring(1).split(',');
          final double x = double.parse(coordinates[0]);
          final double y = double.parse(coordinates[1]);

          if (instruction[0] == 'm') path.moveTo(s.width * x, s.height * y);
          if (instruction[0] == 'l') path.lineTo(s.width * x, s.height * y);
        }
      }

      // Draw country body
      final String uniqueID = countryPathList[i].uniqueID;
      final String name = countryPathList[i].name;
      final Paint paint = Paint()..color = colors?[uniqueID] ?? defaultColor;
      canvas.drawPath(path, paint);

      // Draw country border
      if (countryBorder != null) {
        paint.color = countryBorder!.color;
        paint.strokeWidth = countryBorder!.width;
        paint.style = PaintingStyle.stroke;
        canvas.drawPath(
          path,
          paint,
          onTapUp: (TapUpDetails details) => onTapUp(uniqueID, name, details),
          onTapDown: (TapDownDetails details) => onTapDown(uniqueID, details),
          onLongPressEnd: (LongPressEndDetails details) =>
              onLongPressEnd(uniqueID, name, details),
          onLongPressCancel: () => onLongPressCancel(uniqueID),
        );

        if (rippleCenter != null &&
            rippleRadiusPercentage > 0 &&
            rippleTargetId == uniqueID) {
          c.save(); // Sauvegarde l'état du canvas
          c.clipPath(path); // Limite le dessin au pays

          // Exemple : calcule le bounding box de la shape
          final Rect bounds = path.getBounds();
          final Offset center = bounds.center;

          // Rayon max : distance du centre au coin le plus éloigné
          final double maxRadius = (center - bounds.topLeft).distance;
          final Color effectSplashColor =
              splashColor ?? Theme.of(context).splashColor;

          canvas.drawRippleCircle(
            rippleCenter!,
            rippleRadiusPercentage * (2 * maxRadius),
            effectSplashColor.withValues(
              alpha: (1 - rippleRadiusPercentage).clamp(0, 1),
            ),
          );
          c.restore();
        }
      }
    }
  }

  @override
  bool shouldRepaint(SimpleMapPainter oldDelegate) =>
      oldDelegate.saveTouchedShapes != saveTouchedShapes ||
      oldDelegate.lastTouchedShapes != lastTouchedShapes ||
      oldDelegate.defaultColor != defaultColor ||
      oldDelegate.countryBorder != countryBorder ||
      oldDelegate.colors != colors ||
      oldDelegate.splashColor != splashColor ||
      oldDelegate.rippleRadiusPercentage != rippleRadiusPercentage ||
      oldDelegate.rippleCenter != rippleCenter ||
      oldDelegate.rippleTargetId != rippleTargetId;
}
