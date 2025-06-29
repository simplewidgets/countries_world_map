import 'package:flutter/material.dart';

import '../../countries_world_map.dart';
import 'map_instructions.dart';

class InteractiveMapItem extends StatefulWidget {
  const InteractiveMapItem({
    Key? key,
    this.defaultColor,
    this.color,
    this.onHover,
    this.callback,
    required this.countryPathList,
    required this.i,
  }) : super(key: key);

  final void Function(String id, String name, bool isHovering)? onHover;

  /// Triggered when a country is tapped.
  /// The first parameter is the isoCode of the country that was tapped.
  /// The second parameter is the TapUpDetails of the tap.
  final void Function(String id, String name, TouchDetails tapDetails)?
      callback;

  final Color? defaultColor;
  final Color? color;
  final List<SimpleMapInstruction> countryPathList;
  final int i;

  @override
  State<InteractiveMapItem> createState() => _InteractiveMapItemState();
}

class _InteractiveMapItemState extends State<InteractiveMapItem> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _BuildClipper(widget.countryPathList[widget.i].instructions),
      child: AnimatedContainer(
        clipBehavior: Clip.hardEdge,
        duration: const Duration(milliseconds: 200),
        color: widget.color ?? widget.defaultColor ?? Colors.grey,
        child: InkWell(
          splashColor: Colors.red,
          focusColor: Colors.blue,
          hoverColor: Colors.green,
          highlightColor: Colors.orange,
          onHover: (bool value) {
            if (widget.onHover != null) {
              widget.onHover!(
                widget.countryPathList[widget.i].uniqueID,
                widget.countryPathList[widget.i].name,
                value,
              );
            }
          },
          onTapUp: (TapUpDetails details) {
            if (widget.callback != null) {
              widget.callback!(
                widget.countryPathList[widget.i].uniqueID,
                widget.countryPathList[widget.i].name,
                TouchDetails(
                  globalPosition: details.globalPosition,
                  localPosition: details.localPosition,
                ),
              );
            }
          },
          child: const SizedBox.expand(),
        ),
      ),
    );
  }
}

class _BuildClipper extends CustomClipper<Path> {
  _BuildClipper(this.instructions);

  final List<String> instructions;

  @override
  Path getClip(Size size) {
    final Path path = Path();

    // Read path instructions and start drawing

    // Read path instructions and start drawing
    for (int j = 0; j < instructions.length; j++) {
      final String instruction = instructions[j];
      if (instruction == 'c') {
        path.close();
      } else {
        final List<String> coordinates = instruction.substring(1).split(',');
        final double x = double.parse(coordinates[0]);
        final double y = double.parse(coordinates[1]);

        if (instruction[0] == 'm') path.moveTo(size.width * x, size.height * y);
        if (instruction[0] == 'l') path.lineTo(size.width * x, size.height * y);
      }
    }

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
