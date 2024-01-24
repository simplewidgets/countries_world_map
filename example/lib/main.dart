import 'package:countries_world_map/countries_world_map.dart';
import 'package:example/pages/random_map.dart';
import 'package:example/pages/supported_countries_map.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(SMapExampleApp());
}

class SMapExampleApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Worldmap Example',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        // home: MyHomePage());
        home: Scaffold(
            body: Center(
                child: SimpleMap(
          markers: [
            // PARIS  1.088   |  9.726    | 51.089
            // SimpleMapMarker(
            //     markerSize: Size(16, 16),
            //     latLong: LatLong(latitude: 48.864716, longitude: 2.349014),
            //     marker: Icon(
            //       Icons.circle_outlined,
            //       color: Colors.green,
            //       size: 16,
            //     )),

            // BERLIN  1.04  |   7.788   |  55.057
            // SimpleMapMarker(
            //     markerSize: Size(16, 16),
            //     latLong: LatLong(latitude: 52.520008, longitude: 13.404954),
            //     marker: Icon(
            //       Icons.circle_outlined,
            //       color: Colors.green,
            //       size: 16,
            //     )),

            // LONDON  1.02   |   11.683   |   60.846
            // SimpleMapMarker(
            //     markerSize: Size(16, 16),
            //     latLong: LatLong(latitude: 51.507351, longitude: -0.127758),
            //     marker: Icon(
            //       Icons.circle_outlined,
            //       color: Colors.green,
            //       size: 16,
            //     )),

            // // BOGOTA
            // SimpleMapMarker(
            //     markerSize: Size(16, 16),
            //     latLong: LatLong(latitude: 4.710989, longitude: -74.072092),
            //     marker: Icon(
            //       Icons.circle_outlined,
            //       color: Colors.green,
            //       size: 16,
            //     )),

            // // NEW YORK

            // SimpleMapMarker(
            //     markerSize: Size(16, 16),
            //     latLong: LatLong(latitude: 40.730610, longitude: -73.935242),
            //     marker: Icon(
            //       Icons.circle_outlined,
            //       color: Colors.green,
            //       size: 16,
            //     )),

            // // TOKYO
            // SimpleMapMarker(
            //     markerSize: Size(16, 16),
            //     latLong: LatLong(latitude: 35.652832, longitude: 139.839478),
            //     marker: Icon(
            //       Icons.circle_outlined,
            //       color: Colors.green,
            //       size: 16,
            //     )),

            // // TORONTO
            SimpleMapMarker(
                markerSize: Size(16, 16),
                latLong: LatLong(latitude: 43.651070, longitude: -79.347015),
                marker: Icon(
                  Icons.circle_outlined,
                  color: Colors.green,
                  size: 16,
                )),
          ],
          defaultColor: Colors.grey.shade300,
          // key: Key(properties.toString()),
          // colors: keyValuesPaires,
          instructions: SMapCanada.instructions,
          callback: (id, name, tapDetails) {
            print('id: $id, name: $name');
          },
          // callback: (id, name, tapDetails) {
          //   setState(() {
          //     state = name;

          //     int i = properties
          //         .indexWhere((element) => element['id'] == id);

          //     properties[i]['color'] =
          //         properties[i]['color'] == Colors.green
          //             ? null
          //             : Colors.green;
          //     keyValuesPaires[properties[i]['id']] =
          //         properties[i]['color'];
          //   });
          // },
        ))));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(length: 2, initialIndex: 0, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Countries World Map',
                style: TextStyle(color: Colors.blue)),
            backgroundColor: Colors.transparent,
            elevation: 0,
            bottom: TabBar(controller: controller, tabs: [
              ListTile(title: Center(child: Text('Supported countries'))),
              ListTile(title: Center(child: Text('Random colors'))),
              // ListTile(title: Center(child: Text('Africa'))),
            ])),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller,
              children: [
                SupportedCountriesMap(),
                RandomWorldMapGenerator(),
                // AfricaContinent()
              ]),
        ));
  }
}

// class StackedWidgetTest extends StatelessWidget {
//   const StackedWidgetTest({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Map map = jsonDecode(SMapWorld.instructions);

//     double width = double.parse(map['w'].toString());
//     double height = double.parse(map['h'].toString());
//     List<Map<String, dynamic>> instructions =
//         List<Map<String, dynamic>>.from(map['i']);

//     List<SimpleMapInstruction> countryPathList = <SimpleMapInstruction>[];
//     for (var path in instructions) {
//       countryPathList.add(SimpleMapInstruction.fromJson(path));
//     }

//     return FittedBox(
//       fit: BoxFit.contain,
//       child: SizedBox(
//         width: width,
//         height: height,
//         child: Stack(
//           children: [
//             for (int i = 0; i < countryPathList.length; i++)
//               ClipPath(
//                   clipper: _BuildClipper(countryPathList[i].instructions),
//                   child: PhysicalModel(
//                     child: SizedBox(
//                         width: double.infinity, height: double.infinity),
//                     color: Colors.green,
//                     elevation: 4,
//                     shadowColor: Colors.black,
//                   )),
//             // ClipPath(
//             //     clipper: _BuildClipper(countryPathList[i].instructions),
//             //     child: Container(
//             //       decoration: BoxDecoration(
//             //           image: DecorationImage(
//             //               fit: BoxFit.cover,
//             //               image: NetworkImage(
//             //                   'https://flagcdn.com/w2560/${countryPathList[i].uniqueID.replaceAll('AF-', '').toLowerCase()}.png'))),
//             //     )),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _BuildClipper extends CustomClipper<Path> {
//   final List<String> instructions;

//   _BuildClipper(this.instructions);

//   @override
//   Path getClip(Size size) {
//     Path path = Path();

//     // Read path instructions and start drawing

//     // Read path instructions and start drawing
//     for (int j = 0; j < instructions.length; j++) {
//       String instruction = instructions[j];
//       if (instruction == "c") {
//         path.close();
//       } else {
//         List<String> coordinates = instruction.substring(1).split(',');
//         double x = double.parse(coordinates[0]);
//         double y = double.parse(coordinates[1]);

//         if (instruction[0] == 'm') path.moveTo(size.width * x, size.height * y);
//         if (instruction[0] == 'l') path.lineTo(size.width * x, size.height * y);
//       }
//     }

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return true;
//   }
// }

// class SimpleMapInstruction {
//   /// uniqueID of the territory being drawn
//   String uniqueID;

//   /// Name of the territory being drawn
//   String name;

//   /// List of instructions to draw the territory
//   List<String> instructions;

//   SimpleMapInstruction({
//     required this.uniqueID,
//     required this.instructions,
//     required this.name,
//   });

//   // To Json
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{
//       "\"n\"": "\"$name\"",
//       "\"u\"": "\"$uniqueID\"",
//       "\"i\"": instructions,
//     };
//     return data;
//   }

//   // From Json
//   factory SimpleMapInstruction.fromJson(Map<String, dynamic> json) {
//     List<String> paths = <String>[];

//     List jsonPaths = json['i'];

//     for (int i = 0; i < jsonPaths.length; i++) {
//       paths.add(jsonPaths[i]);
//     }

//     return SimpleMapInstruction(
//         uniqueID: json['u'], name: json['n'], instructions: paths);
//   }
// }
