import 'dart:convert';
import 'dart:ui';

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
      mapWidth: json['w'] as double,
      mapHeight: json['h'] as double,
      topLeft: LatLong.fromString(
        string: json['g']['a'] as String,
      ),
      bottomRight: LatLong.fromString(
        string: json['g']['b'] as String,
      ),
    );
  }

  const MapAttributes._({
    required this.mapHeight,
    required this.mapWidth,
    required this.bottomRight,
    required this.topLeft,
  });

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
    final double relativeY =
        (topLeft.latitude - position.latitude) / mapHeightInGeoUnits;

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
