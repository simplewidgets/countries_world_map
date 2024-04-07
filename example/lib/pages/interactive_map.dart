import 'package:countries_world_map/countries_world_map.dart';
import 'package:countries_world_map/data/maps/world_map.dart';
import 'package:flutter/material.dart';

class InteractiveMap extends StatefulWidget {
  InteractiveMap({Key? key}) : super(key: key);

  @override
  _InteractiveMapState createState() => _InteractiveMapState();
}

class _InteractiveMapState extends State<InteractiveMap> {
  Map colors = {};

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          InteractiveViewer(
            maxScale: 75.0,
            child: Center(
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.92,
                    // Actual widget from the Countries_world_map package.
                    child: SimpleMap(
                      defaultColor: Colors.grey.shade200,
                      countryBorder: CountryBorder(color: Colors.white),
                      instructions: SMapWorld.instructionsMercator,
                      onHover: ((id, name, isHovering) {
                        setState(() {
                          if (isHovering) {
                            colors[id] = Colors.blue;
                          } else {
                            colors.remove(id);
                          }
                        });
                      }),
                      callback: (id, name, tabDetails) {
                        print('id: $id, name: $name');
                      },
                      markers: [
                        SimpleMapMarker(
                            markerSize: Size(30, 30),
                            latLong:
                                LatLong(latitude: 52.03333, longitude: 5.65833),
                            marker: Icon(
                              Icons.location_on,
                              color: Colors.green,
                              size: 30,
                            )),
                      ],
                      colors: colors,
                    ),
                  ),
                  // Creates 8% from right side so the map looks more centered.
                  Container(width: MediaQuery.of(context).size.width * 0.08),
                ],
              ),
            ),
          ),
          // Positioned(
          //     bottom: 36,
          //     left: 0,
          //     right: 0,
          //     child: Text('Tap / click the dice to change the colors',
          //         style: TextStyle(fontSize: 18), textAlign: TextAlign.center)),
          // Positioned(
          //   bottom: 36,
          //   right: 36,
          //   child: FloatingActionButton(
          //       tooltip: 'Randomize',
          //       onPressed: () {
          //         setState(() {});
          //       },
          //       child: Icon(Icons.casino)),
          // ),
        ],
      ),
    );
  }
}
