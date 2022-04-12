import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SimpleWidgetsMapDrawingModel {
  final String name;
  final List<double> points;
  final Map<dynamic, Color?> colors;
  final Color defaultColors;

  SimpleWidgetsMapDrawingModel({
    required this.name,
    required this.points,
    required this.colors,
    required this.defaultColors,
  });
}

class SimpleWidgetsMapPainter extends CustomPainter {
  /// This Color is used for all the countries that have no custom color
  final Color dC;
  final BuildContext context;

  /// The CountryColors is basically a list of Countries and Colors to give a Countrie a color of choice.
  final SimpleWorldCountryColors cC;
  final Function(String, TapUpDetails) callback;

  const SimpleWidgetsMapPainter(
      {required this.dC,
      required this.cC,
      required this.context,
      required this.callback});

  void drawPaths(TouchyCanvas canvas, Path p, Paint pa, String countryCode) {
    return canvas.drawPath(p, pa, onTapUp: (tabdetail) {
      callback(countryCode, tabdetail);
    });
  }

  Path drawPathLines(Path p, double width, double height, List<double> po) {
    p.moveTo(width * po[0], height * po[1]);
    for (int i = 2; i + 1 < po.length; i += 2) {
      p.lineTo(width * po[i], height * po[i + 1]);
    }
    return p..close();
  }

  @override
  void paint(Canvas canvas, Size size) {
    TouchyCanvas worldCanvas = TouchyCanvas(context, canvas);
  }


    @override
  bool shouldRepaint(SimpleWidgetsMapPainter oldDelegate) => oldDelegate.cC != cC;
  }
}
