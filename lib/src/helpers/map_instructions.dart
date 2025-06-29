class SimpleMapInstruction {
  SimpleMapInstruction({
    required this.uniqueID,
    required this.instructions,
    required this.name,
  });

  // From Json
  factory SimpleMapInstruction.fromJson(Map<String, dynamic> json) {
    final List<String> paths = <String>[];

    final List<dynamic> jsonPaths = json['i'];

    for (int i = 0; i < jsonPaths.length; i++) {
      paths.add(jsonPaths[i] as String);
    }

    return SimpleMapInstruction(
      uniqueID: json['u'],
      name: json['n'],
      instructions: paths,
    );
  }

  /// uniqueID of the territory being drawn
  String uniqueID;

  /// Name of the territory being drawn
  String name;

  /// List of instructions to draw the territory
  List<String> instructions;

  // To Json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{
      '"n"': '"$name"',
      '"u"': '"$uniqueID"',
      '"i"': instructions,
    };
    return data;
  }
}
