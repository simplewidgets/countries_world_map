// import 'package:countries_world_map/countries_world_map.dart';
// import 'package:flutter/material.dart';

// class AfricaContinent extends StatefulWidget {
//   const AfricaContinent({Key? key}) : super(key: key);

//   @override
//   State<AfricaContinent> createState() => _AfricaContinentState();
// }

// class _AfricaContinentState extends State<AfricaContinent> {
//   String country = 'No country selected';

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         SizedBox(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           child: InteractiveViewer(
//               maxScale: 75.0,
//               child: SimpleMap(
//                 instructions: SMapAfrica.instructions,
//                 callback: (id, name, tapDetails) {
//                   setState(() {
//                     country = name;
//                   });
//                 },
//               )),
//         ),
//         Text(country, style: Theme.of(context).textTheme.headline1)
//       ],
//     );
//   }
// }
