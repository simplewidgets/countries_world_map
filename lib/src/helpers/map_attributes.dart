import 'dart:convert';
import 'dart:ui';

import 'package:quantity/quantity.dart';

class LatLong {
  final double latitude;
  final double longitude;

  const LatLong({required this.latitude, required this.longitude});

  factory LatLong.fromString({required String string, String sep = ','}) {
    final List<String> result = string.split(sep);
    return LatLong(
      longitude: double.parse(result[0]),
      latitude: double.parse(result[1]),
    );
  }

  @override
  bool operator ==(Object other) =>
      other is LatLong &&
      latitude == other.latitude &&
      longitude == other.longitude;

  @override
  int get hashCode => Object.hashAll(<Object?>[latitude, longitude]);

  @override
  String toString() => 'LatLong(latitude: $latitude, longitude: $longitude)';
}

class MapAttributes {
  /// Read json from the Map Instruction string.
  factory MapAttributes(String instructions) {
    final Map<String, dynamic> json = jsonDecode(instructions);

    return MapAttributes._(
      mapWidth: double.parse(json['w'].toString()),
      mapHeight: double.parse(json['h'].toString()),
      topLeft: LatLong.fromString(
        string: json['g']['a'] as String,
      ),
      bottomRight: LatLong.fromString(
        string: json['g']['b'] as String,
      ),
      drawingInstructions: List<Map<String, dynamic>>.from(json['i']),
    );
  }

  const MapAttributes._({
    required this.mapHeight,
    required this.mapWidth,
    required this.bottomRight,
    required this.topLeft,
    required this.drawingInstructions,
  });

  final List<Map<String, dynamic>> drawingInstructions;

  /// Width of the svg map
  final double mapWidth;

  /// height of the svg map
  final double mapHeight;

  /// LatLong of the top left corner of the svg map
  final LatLong topLeft;

  /// LatLong of the bottom right corner of the svg map
  final LatLong bottomRight;

  /// Aspect ratio of the svg map
  double get aspectRatio => mapHeight / mapWidth;

  /// Return the position Size(x, y) from a LatLong position.
  /// This method can be used if you want to display some marker on the map.
  /// [position] Coordinate of a city for example.
  Size latLongToPixels(LatLong position) {
    // Calculate the width and height of the map in geographical units
    final double mapWidthInGeoUnits = bottomRight.longitude - topLeft.longitude;
    final double mapHeightInGeoUnits = topLeft.latitude - bottomRight.latitude;

    // Calculate the relative position of the point with respect to the map size
    final double relativeX =
        (position.longitude - topLeft.longitude) / mapWidthInGeoUnits;

    // TODO ! Calculate the curvature of earth in the specified map.
    // The current calculation is not accurate. It is just a simple approximation.
    // In the northen hemisphere, the marker appears more upwards than it should be.
    // In the southern hemisphere, the marker appears more downwards than it should be.

    // Get baseline (lowest lat) which will be set as 0 degrees
    final double baseLine = bottomRight.latitude;
    final double amountAboveBaseLine = position.latitude - baseLine;

    // Calculate the curvature of earth in the specified map.
    // double scaleFactor = cos(amountAboveBaseLine * pi / 180);
    double scaleFactor = secant(Angle(deg: amountAboveBaseLine));

    print(scaleFactor);

    scaleFactor = 1 - scaleFactor;

    scaleFactor = scaleFactor + 1;

    double relativeY =
        ((topLeft.latitude - position.latitude) / mapHeightInGeoUnits) *
            scaleFactor;

    print(scaleFactor);

    // Calculate the coordinates on the 2D map
    final double x = relativeX * mapWidth;
    final double y = relativeY * mapHeight;

    // Result
    return Size(x, y);
  }

  @override
  String toString() =>
      'MapAttributes(mapWidth: $mapWidth, mapHeight: $mapHeight, topLeft: $topLeft, bottomRight: $bottomRight, aspectRatio: $aspectRatio)';
}
