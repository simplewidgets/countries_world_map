import 'package:countries_world_map/countries_world_map.dart';
import 'package:flutter/material.dart';

class SupportedCountriesMap extends StatelessWidget {
  const SupportedCountriesMap({Key? key}) : super(key: key);

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
              child: SimpleWorldMap(
                // If the color of a country is not specified it will take in a default color.
                defaultCountryColor: Colors.grey,
                // CountryColors takes in 250 different colors that will color each country the color you want. In this example it generates a random color each time SetState({}) is called.
                callback: (country, details) {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                          title: Text(country),
                          content: countryBuilder(country)));
                },
                countryColors: SimpleWorldCountryColors(
                  jP: Colors.green,
                  nL: Colors.green,
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

  Widget countryBuilder(String country) {
    switch (country) {
      case 'jp':
        return JapanMap(callback: (c, d) => print(c));
      case 'nl':
        return NetherlandsMap(callback: (c, d) => print(c));
      default:
        return Text('This country does not have a map yet...');
    }
  }
}
