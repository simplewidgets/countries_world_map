import 'dart:convert';

import 'package:countries_world_map/countries_world_map.dart';
import 'package:countries_world_map/data/maps/world_map.dart';
import 'package:flutter/material.dart';

class SupportedCountriesMap extends StatefulWidget {
  const SupportedCountriesMap({Key? key}) : super(key: key);

  @override
  _SupportedCountriesMapState createState() => _SupportedCountriesMapState();
}

class _SupportedCountriesMapState extends State<SupportedCountriesMap> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
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
                    instructions: SMapWorld.instructions,

                    // If the color of a country is not specified it will take in a default color.
                    defaultColor: Colors.grey,
                    // CountryColors takes in 250 different colors that will color each country the color you want. In this example it generates a random color each time SetState({}) is called.
                    callback: (id, name, tapdetails) {
                      goToCountry(id);
                    },
                    countryBorder: CountryBorder(color: Colors.white),
                    colors: SMapWorldColors(
                      eT: Colors.green,
                      aR: Colors.green,
                      aT: Colors.green,
                      aZ: Colors.green,
                      cL: Colors.green,
                      cD: Colors.green,
                      cG: Colors.green,
                      hK: Colors.green,
                      iN: Colors.green,
                      iD: Colors.green,
                      iL: Colors.green,
                      iT: Colors.green,
                      cI: Colors.green,
                      mY: Colors.green,
                      mT: Colors.green,
                      mZ: Colors.green,
                      nA: Colors.green,
                      pS: Colors.green,
                      pE: Colors.green,
                      pH: Colors.green,
                      pR: Colors.green,
                      sL: Colors.green,
                      zA: Colors.green,
                      sD: Colors.green,
                      eS: Colors.green,
                      cH: Colors.green,
                      gB: Colors.green,
                      vE: Colors.green,
                      vN: Colors.green,
                      zM: Colors.green,
                      zW: Colors.green,
                      uS: Colors.green,
                      aD: Colors.green,
                      aO: Colors.green,
                      aM: Colors.green,
                      aU: Colors.green,
                      bS: Colors.green,
                      bH: Colors.green,
                      bD: Colors.green,
                      bY: Colors.green,
                      bE: Colors.green,
                      bT: Colors.green,
                      bO: Colors.green,
                      bW: Colors.green,
                      bR: Colors.green,
                      bN: Colors.green,
                      bG: Colors.green,
                      bF: Colors.green,
                      bI: Colors.green,
                      cV: Colors.green,
                      cM: Colors.green,
                      cA: Colors.green,
                      cF: Colors.green,
                      tD: Colors.green,
                      cN: Colors.green,
                      cO: Colors.green,
                      cR: Colors.green,
                      hR: Colors.green,
                      cU: Colors.green,
                      cY: Colors.green,
                      cZ: Colors.green,
                      dK: Colors.green,
                      dJ: Colors.green,
                      dO: Colors.green,
                      eC: Colors.green,
                      eG: Colors.green,
                      sV: Colors.green,
                      eE: Colors.green,
                      fO: Colors.green,
                      fI: Colors.green,
                      fR: Colors.green,
                      gE: Colors.green,
                      dE: Colors.green,
                      gR: Colors.green,
                      gT: Colors.green,
                      gN: Colors.green,
                      hT: Colors.green,
                      hN: Colors.green,
                      hU: Colors.green,
                      iR: Colors.green,
                      iQ: Colors.green,
                      iE: Colors.green,
                      jM: Colors.green,
                      jP: Colors.green,
                      kZ: Colors.green,
                      kE: Colors.green,
                      xK: Colors.green,
                      kG: Colors.green,
                      lA: Colors.green,
                      lV: Colors.green,
                      lI: Colors.green,
                      lT: Colors.green,
                      lU: Colors.green,
                      mK: Colors.green,
                      mL: Colors.green,
                      mX: Colors.green,
                      mD: Colors.green,
                      mE: Colors.green,
                      mA: Colors.green,
                      mM: Colors.green,
                      nP: Colors.green,
                      nL: Colors.green,
                      nZ: Colors.green,
                      nI: Colors.green,
                      nG: Colors.green,
                      nO: Colors.green,
                      oM: Colors.green,
                      pK: Colors.green,
                      pA: Colors.green,
                      pY: Colors.green,
                      pL: Colors.green,
                      pT: Colors.green,
                      qA: Colors.green,
                      rO: Colors.green,
                      rU: Colors.green,
                      rW: Colors.green,
                      sM: Colors.green,
                      sA: Colors.green,
                      rS: Colors.green,
                      sG: Colors.green,
                      sK: Colors.green,
                      sI: Colors.green,
                      kR: Colors.green,
                      lK: Colors.green,
                      sE: Colors.green,
                      sY: Colors.green,
                      tW: Colors.green,
                      tJ: Colors.green,
                      tH: Colors.green,
                      tR: Colors.green,
                      uG: Colors.green,
                      uA: Colors.green,
                      aE: Colors.green,
                      uY: Colors.green,
                      uZ: Colors.green,
                      yE: Colors.green,
                    ).toMap(),
                  ),
                ),
                // Creates 8% from right side so the map looks more centered.
                Container(width: MediaQuery.of(context).size.width * 0.08),
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 36,
            left: 0,
            right: 0,
            child: Text('Tap / click a country to see its map',
                style: TextStyle(fontSize: 18), textAlign: TextAlign.center)),
      ],
    );
  }

  void goToCountry(String country) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CountryPage(country: country),
      ),
    );
  }
}

class CountryPage extends StatefulWidget {
  final String country;

  const CountryPage({required this.country, Key? key}) : super(key: key);

  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  late String state;
  late String instruction;

  late List<Map<String, dynamic>> properties;

  late Map<String, Color?> keyValuesPaires;

  @override
  void initState() {
    instruction = getInstructions(widget.country);
    if (instruction != "NOT SUPPORTED") {
      properties = getProperties(instruction);
      properties.sort((a, b) => a['name'].compareTo(b['name']));
      keyValuesPaires = {};
      properties.forEach((element) {
        keyValuesPaires.addAll({element['id']: element['color']});
      });

      state = 'Tap a state, prefecture or province';
    } else {
      state = 'This country is not supported';
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.blue),
        title: Text(
          widget.country.toUpperCase() + ' - ' + state,
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: instruction == "NOT SUPPORTED"
          ? Center(child: Text("This country is not supported"))
          : Column(
              children: [
                Expanded(
                  child: Row(children: [
                    Expanded(
                        child: Center(
                            child: SimpleMap(
                      defaultColor: Colors.grey.shade300,
                      key: Key(properties.toString()),
                      colors: keyValuesPaires,
                      instructions: instruction,
                      callback: (id, name, tapDetails) {
                        setState(() {
                          state = name;

                          int i = properties
                              .indexWhere((element) => element['id'] == id);

                          properties[i]['color'] =
                              properties[i]['color'] == Colors.green
                                  ? null
                                  : Colors.green;
                          keyValuesPaires[properties[i]['id']] =
                              properties[i]['color'];
                        });
                      },
                    ))),
                    if (MediaQuery.of(context).size.width > 800)
                      SizedBox(
                          width: 320,
                          height: MediaQuery.of(context).size.height,
                          child: Card(
                            margin: EdgeInsets.all(16),
                            elevation: 8,
                            child: ListView(
                              children: [
                                for (int i = 0; i < properties.length; i++)
                                  ListTile(
                                    title: Text(properties[i]['name']),
                                    leading: Container(
                                      margin: EdgeInsets.only(top: 8),
                                      width: 20,
                                      height: 20,
                                      color: properties[i]['color'] ??
                                          Colors.grey.shade300,
                                    ),
                                    subtitle: Text(properties[i]['id']),
                                    onTap: () {
                                      setState(() {
                                        properties[i]['color'] = properties[i]
                                                    ['color'] ==
                                                Colors.green
                                            ? null
                                            : Colors.green;
                                        keyValuesPaires[properties[i]['id']] =
                                            properties[i]['color'];
                                      });
                                    },
                                  )
                              ],
                            ),
                          )),
                  ]),
                ),
                if (MediaQuery.of(context).size.width < 800)
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: Card(
                        margin: EdgeInsets.all(16),
                        elevation: 8,
                        child: ListView(
                          children: [
                            for (int i = 0; i < properties.length; i++)
                              ListTile(
                                title: Text(properties[i]['name']),
                                leading: Container(
                                  margin: EdgeInsets.only(top: 8),
                                  width: 20,
                                  height: 20,
                                  color: properties[i]['color'] ??
                                      Colors.grey.shade300,
                                ),
                                subtitle: Text(properties[i]['id']),
                                onTap: () {
                                  setState(() {
                                    properties[i]['color'] =
                                        properties[i]['color'] == Colors.green
                                            ? null
                                            : Colors.green;
                                    keyValuesPaires[properties[i]['id']] =
                                        properties[i]['color'];
                                  });
                                },
                              )
                          ],
                        ),
                      )),
              ],
            ),
    );
  }

  List<Map<String, dynamic>> getProperties(String input) {
    Map<String, dynamic> instructions = json.decode(input);

    List paths = instructions['i'];

    List<Map<String, dynamic>> properties = [];

    paths.forEach((element) {
      properties.add({
        'name': element['n'],
        'id': element['u'],
        'color': null,
      });
    });

    return properties;
  }

  String getInstructions(String id) {
    switch (id) {
      case 'ar':
        return SMapArgentina.instructions;

      case 'at':
        return SMapAustria.instructions;

      case 'ad':
        return SMapAndorra.instructions;

      case 'ao':
        return SMapAngola.instructions;

      case 'am':
        return SMapArmenia.instructions;

      case 'au':
        return SMapAustralia.instructions;

      case 'az':
        return SMapAzerbaijan.instructions;

      case 'bs':
        return SMapBahamas.instructions;

      case 'bh':
        return SMapBahrain.instructions;

      case 'bd':
        return SMapBangladesh.instructions;

      case 'by':
        return SMapBelarus.instructions;

      case 'be':
        return SMapBelgium.instructions;

      case 'bt':
        return SMapBhutan.instructions;

      case 'bo':
        return SMapBolivia.instructions;

      case 'bw':
        return SMapBotswana.instructions;

      case 'br':
        return SMapBrazil.instructions;

      case 'bn':
        return SMapBrunei.instructions;

      case 'bg':
        return SMapBulgaria.instructions;

      case 'bf':
        return SMapBurkinaFaso.instructions;

      case 'bi':
        return SMapBurundi.instructions;

      case 'ca':
        return SMapCanada.instructions;

      case 'cm':
        return SMapCameroon.instructions;

      case 'cf':
        return SMapCentralAfricanRepublic.instructions;

      case 'cv':
        return SMapCapeVerde.instructions;

      case 'td':
        return SMapChad.instructions;

      case 'cn':
        return SMapChina.instructions;

      case 'ch':
        return SMapSwitzerland.instructions;

      case 'cd':
        return SMapCongoDR.instructions;

      case 'cg':
        return SMapCongoBrazzaville.instructions;

      case 'co':
        return SMapColombia.instructions;

      case 'cr':
        return SMapCostaRica.instructions;

      case 'hr':
        return SMapCroatia.instructions;

      case 'cu':
        return SMapCuba.instructions;

      case 'cl':
        return SMapChile.instructions;

      case 'ci':
        return SMapIvoryCoast.instructions;

      case 'cy':
        return SMapCyprus.instructions;

      case 'cz':
        return SMapCzechRepublic.instructions;

      case 'dk':
        return SMapDenmark.instructions;

      case 'dj':
        return SMapDjibouti.instructions;

      case 'do':
        return SMapDominicanRepublic.instructions;

      case 'ec':
        return SMapEcuador.instructions;

      case 'es':
        return SMapSpain.instructions;

      case 'eg':
        return SMapEgypt.instructions;

      case 'et':
        return SMapEthiopia.instructions;

      case 'sv':
        return SMapElSalvador.instructions;

      case 'ee':
        return SMapEstonia.instructions;

      case 'fo':
        return SMapFaroeIslands.instructions;

      case 'fi':
        return SMapFinland.instructions;

      case 'fr':
        return SMapFrance.instructions;

      case 'gb':
        return SMapUnitedKingdom.instructions;

      case 'ge':
        return SMapGeorgia.instructions;

      case 'de':
        return SMapGermany.instructions;

      case 'gr':
        return SMapGreece.instructions;

      case 'gt':
        return SMapGuatemala.instructions;

      case 'gn':
        return SMapGuinea.instructions;

      case 'hi':
        return SMapHaiti.instructions;

      case 'hk':
        return SMapHongKong.instructions;

      case 'hn':
        return SMapHonduras.instructions;

      case 'hu':
        return SMapHungary.instructions;

      case 'in':
        return SMapIndia.instructions;

      case 'id':
        return SMapIndonesia.instructions;

      case 'il':
        return SMapIsrael.instructions;

      case 'ir':
        return SMapIran.instructions;

      case 'iq':
        return SMapIraq.instructions;

      case 'ie':
        return SMapIreland.instructions;

      case 'it':
        return SMapItaly.instructions;

      case 'jm':
        return SMapJamaica.instructions;

      case 'jp':
        return SMapJapan.instructions;

      case 'kz':
        return SMapKazakhstan.instructions;

      case 'ke':
        return SMapKenya.instructions;

      case 'xk':
        return SMapKosovo.instructions;

      case 'kg':
        return SMapKyrgyzstan.instructions;

      case 'la':
        return SMapLaos.instructions;

      case 'lv':
        return SMapLatvia.instructions;

      case 'li':
        return SMapLiechtenstein.instructions;

      case 'lt':
        return SMapLithuania.instructions;

      case 'lu':
        return SMapLuxembourg.instructions;

      case 'mk':
        return SMapMacedonia.instructions;

      case 'ml':
        return SMapMali.instructions;

      case 'mt':
        return SMapMalta.instructions;

      case 'mz':
        return SMapMozambique.instructions;

      case 'mx':
        return SMapMexico.instructions;

      case 'md':
        return SMapMoldova.instructions;

      case 'me':
        return SMapMontenegro.instructions;

      case 'ma':
        return SMapMorocco.instructions;

      case 'mm':
        return SMapMyanmar.instructions;

      case 'my':
        return SMapMalaysia.instructions;

      case 'na':
        return SMapNamibia.instructions;

      case 'np':
        return SMapNepal.instructions;

      case 'nl':
        return SMapNetherlands.instructions;

      case 'nz':
        return SMapNewZealand.instructions;

      case 'ni':
        return SMapNicaragua.instructions;

      case 'ng':
        return SMapNigeria.instructions;

      case 'no':
        return SMapNorway.instructions;

      case 'om':
        return SMapOman.instructions;

      case 'ps':
        return SMapPalestine.instructions;

      case 'pk':
        return SMapPakistan.instructions;

      case 'ph':
        return SMapPhilippines.instructions;

      case 'pa':
        return SMapPanama.instructions;

      case 'pe':
        return SMapPeru.instructions;

      case 'pr':
        return SMapPuertoRico.instructions;

      case 'py':
        return SMapParaguay.instructions;

      case 'pl':
        return SMapPoland.instructions;

      case 'pt':
        return SMapPortugal.instructions;

      case 'qa':
        return SMapQatar.instructions;

      case 'ro':
        return SMapRomania.instructions;

      case 'ru':
        return SMapRussia.instructions;

      case 'rw':
        return SMapRwanda.instructions;

      case 'sa':
        return SMapSaudiArabia.instructions;

      case 'rs':
        return SMapSerbia.instructions;

      case 'sd':
        return SMapSudan.instructions;

      case 'sg':
        return SMapSingapore.instructions;

      case 'sl':
        return SMapSierraLeone.instructions;

      case 'sk':
        return SMapSlovakia.instructions;

      case 'si':
        return SMapSlovenia.instructions;

      case 'kr':
        return SMapSouthKorea.instructions;

      case 'lk':
        return SMapSriLanka.instructions;

      case 'se':
        return SMapSweden.instructions;

      case 'sy':
        return SMapSyria.instructions;

      case 'tw':
        return SMapTaiwan.instructions;

      case 'tj':
        return SMapTajikistan.instructions;

      case 'th':
        return SMapThailand.instructions;

      case 'tr':
        return SMapTurkey.instructions;

      case 'ug':
        return SMapUganda.instructions;

      case 'ua':
        return SMapUkraine.instructions;

      case 'ae':
        return SMapUnitedArabEmirates.instructions;

      case 'us':
        return SMapUnitedStates.instructions;

      case 'uy':
        return SMapUruguay.instructions;

      case 'uz':
        return SMapUzbekistan.instructions;

      case 've':
        return SMapVenezuela.instructions;

      case 'vn':
        return SMapVietnam.instructions;

      case 'ye':
        return SMapYemen.instructions;

      case 'za':
        return SMapSouthAfrica.instructions;

      case 'zm':
        return SMapZambia.instructions;

      case 'zw':
        return SMapZimbabwe.instructions;

      default:
        return 'NOT SUPPORTED';
    }
  }
}
