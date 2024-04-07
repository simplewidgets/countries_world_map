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
