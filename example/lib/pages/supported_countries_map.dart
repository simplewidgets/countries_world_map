import 'package:countries_world_map/countries_world_map.dart';
import 'package:flutter/material.dart';

class SupportedCountriesMap extends StatefulWidget {
  const SupportedCountriesMap({Key? key}) : super(key: key);

  @override
  _SupportedCountriesMapState createState() => _SupportedCountriesMapState();
}

class _SupportedCountriesMapState extends State<SupportedCountriesMap> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: InteractiveViewer(
        maxScale: 75.0,
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.92,
              // Actual widget from the Countries_world_map package.
              child: SimpleMap(
                // If the color of a country is not specified it will take in a default color.
                defaultCountryColor: Colors.grey,
                // CountryColors takes in 250 different colors that will color each country the color you want. In this example it generates a random color each time SetState({}) is called.
                callback: (country, details) {
                  print(country);
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => CountryPage(country: country)));
                },
                countryColors: SimpleWorldCountryColors(
                  jP: Colors.green,
                  nL: Colors.green,
                  uS: Colors.green,
                ),
              ),
            ),
            // Creates 8% from right side so the map looks more centered.
            Container(width: MediaQuery.of(context).size.width * 0.08),
          ],
        ),
      ),
    );
  }
}

// class CountryPage extends StatefulWidget {
//   final String country;

//   const CountryPage({required this.country, Key? key}) : super(key: key);

//   @override
//   _CountryPageState createState() => _CountryPageState();
// }

// class _CountryPageState extends State<CountryPage> {
//   late String state;

//   @override
//   void initState() {
//     state = 'Tap a state, prefecture or province';
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey.shade50,
//         elevation: 0,
//         iconTheme: IconThemeData(color: Colors.blue),
//         title: Text(
//           widget.country.toUpperCase() + ' - ' + state,
//           style: TextStyle(color: Colors.blue),
//         ),
//       ),
//       body: Center(child: countryBuilder(widget.country)),
//     );
//   }

//   Widget countryBuilder(String country) {
//     switch (country) {
//       case 'jp':
//         return JapanMap(callback: (x, y) => setState(() => state = x));
//       case 'nl':
//         return NetherlandsMap(callback: (x, y) => setState(() => state = x));
//       case 'us':
//         return USAMap(callback: (x, y) => setState(() => state = x));
//       default:
//         return Text(
//             'This country does not have a map yet...\nPlease select a green country');
//     }
//   }
// }
