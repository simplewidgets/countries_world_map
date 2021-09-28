import 'dart:math';

import 'package:countries_world_map/countries_world_map.dart';
import 'package:flutter/material.dart';

class RandomWorldMapGenrator extends StatefulWidget {
  RandomWorldMapGenrator({Key? key}) : super(key: key);

  @override
  _RandomWorldMapGenratorState createState() => _RandomWorldMapGenratorState();
}

class _RandomWorldMapGenratorState extends State<RandomWorldMapGenrator> {
  List<Color> colors = [
    Colors.indigo.shade900,
    Colors.blue,
    // Colors.grey.shade300,
    Colors.pink,
    Colors.red.shade900,
    Colors.black,
    Colors.black,
    Colors.black,
    Colors.black,
  ];

  final _random = Random();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: InteractiveViewer(
        maxScale: 75.0,
        child: Center(
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.92,
                // Actual widget from the Countries_world_map package.
                child: SimpleWorldMap(
                  countryColors: SimpleWorldCountryColors(
                    aD: colors[_random.nextInt(5)],
                    aE: colors[_random.nextInt(5)],
                    aF: colors[_random.nextInt(5)],
                    aG: colors[_random.nextInt(5)],
                    aI: colors[_random.nextInt(5)],
                    aL: colors[_random.nextInt(5)],
                    aM: colors[_random.nextInt(5)],
                    aN: colors[_random.nextInt(5)],
                    aO: colors[_random.nextInt(5)],
                    aQ: colors[_random.nextInt(5)],
                    aR: colors[_random.nextInt(5)],
                    aS: colors[_random.nextInt(5)],
                    aT: colors[_random.nextInt(5)],
                    aU: colors[_random.nextInt(5)],
                    aW: colors[_random.nextInt(5)],
                    aX: colors[_random.nextInt(5)],
                    aZ: colors[_random.nextInt(5)],
                    bA: colors[_random.nextInt(5)],
                    bB: colors[_random.nextInt(5)],
                    bD: colors[_random.nextInt(5)],
                    bE: colors[_random.nextInt(5)],
                    bF: colors[_random.nextInt(5)],
                    bG: colors[_random.nextInt(5)],
                    bH: colors[_random.nextInt(5)],
                    bI: colors[_random.nextInt(5)],
                    bJ: colors[_random.nextInt(5)],
                    bL: colors[_random.nextInt(5)],
                    bM: colors[_random.nextInt(5)],
                    bN: colors[_random.nextInt(5)],
                    bO: colors[_random.nextInt(5)],
                    bQ: colors[_random.nextInt(5)],
                    bR: colors[_random.nextInt(5)],
                    bS: colors[_random.nextInt(5)],
                    bT: colors[_random.nextInt(5)],
                    bV: colors[_random.nextInt(5)],
                    bW: colors[_random.nextInt(5)],
                    bY: colors[_random.nextInt(5)],
                    bZ: colors[_random.nextInt(5)],
                    cA: colors[_random.nextInt(5)],
                    cC: colors[_random.nextInt(5)],
                    cD: colors[_random.nextInt(5)],
                    cF: colors[_random.nextInt(5)],
                    cG: colors[_random.nextInt(5)],
                    cH: colors[_random.nextInt(5)],
                    cI: colors[_random.nextInt(5)],
                    cK: colors[_random.nextInt(5)],
                    cL: colors[_random.nextInt(5)],
                    cM: colors[_random.nextInt(5)],
                    cN: colors[_random.nextInt(5)],
                    cO: colors[_random.nextInt(5)],
                    cR: colors[_random.nextInt(5)],
                    cU: colors[_random.nextInt(5)],
                    cV: colors[_random.nextInt(5)],
                    cW: colors[_random.nextInt(5)],
                    cX: colors[_random.nextInt(5)],
                    cY: colors[_random.nextInt(5)],
                    cZ: colors[_random.nextInt(5)],
                    dE: colors[_random.nextInt(5)],
                    dJ: colors[_random.nextInt(5)],
                    dK: colors[_random.nextInt(5)],
                    dM: colors[_random.nextInt(5)],
                    dO: colors[_random.nextInt(5)],
                    dZ: colors[_random.nextInt(5)],
                    eC: colors[_random.nextInt(5)],
                    eE: colors[_random.nextInt(5)],
                    eG: colors[_random.nextInt(5)],
                    eH: colors[_random.nextInt(5)],
                    eR: colors[_random.nextInt(5)],
                    eS: colors[_random.nextInt(5)],
                    eT: colors[_random.nextInt(5)],
                    fI: colors[_random.nextInt(5)],
                    fJ: colors[_random.nextInt(5)],
                    fK: colors[_random.nextInt(5)],
                    fM: colors[_random.nextInt(5)],
                    fO: colors[_random.nextInt(5)],
                    fR: colors[_random.nextInt(5)],
                    gA: colors[_random.nextInt(5)],
                    gB: colors[_random.nextInt(5)],
                    gD: colors[_random.nextInt(5)],
                    gE: colors[_random.nextInt(5)],
                    gF: colors[_random.nextInt(5)],
                    gG: colors[_random.nextInt(5)],
                    gH: colors[_random.nextInt(5)],
                    gI: colors[_random.nextInt(5)],
                    gL: colors[_random.nextInt(5)],
                    gM: colors[_random.nextInt(5)],
                    gN: colors[_random.nextInt(5)],
                    gP: colors[_random.nextInt(5)],
                    gQ: colors[_random.nextInt(5)],
                    gR: colors[_random.nextInt(5)],
                    gS: colors[_random.nextInt(5)],
                    gT: colors[_random.nextInt(5)],
                    gU: colors[_random.nextInt(5)],
                    gW: colors[_random.nextInt(5)],
                    gY: colors[_random.nextInt(5)],
                    hK: colors[_random.nextInt(5)],
                    hM: colors[_random.nextInt(5)],
                    hN: colors[_random.nextInt(5)],
                    hR: colors[_random.nextInt(5)],
                    hT: colors[_random.nextInt(5)],
                    hU: colors[_random.nextInt(5)],
                    iD: colors[_random.nextInt(5)],
                    iE: colors[_random.nextInt(5)],
                    iL: colors[_random.nextInt(5)],
                    iM: colors[_random.nextInt(5)],
                    iN: colors[_random.nextInt(5)],
                    iO: colors[_random.nextInt(5)],
                    iQ: colors[_random.nextInt(5)],
                    iR: colors[_random.nextInt(5)],
                    iS: colors[_random.nextInt(5)],
                    iT: colors[_random.nextInt(5)],
                    jE: colors[_random.nextInt(5)],
                    jM: colors[_random.nextInt(5)],
                    jO: colors[_random.nextInt(5)],
                    jP: colors[_random.nextInt(5)],
                    kE: colors[_random.nextInt(5)],
                    kG: colors[_random.nextInt(5)],
                    kH: colors[_random.nextInt(5)],
                    kI: colors[_random.nextInt(5)],
                    kM: colors[_random.nextInt(5)],
                    kN: colors[_random.nextInt(5)],
                    kP: colors[_random.nextInt(5)],
                    kR: colors[_random.nextInt(5)],
                    kW: colors[_random.nextInt(5)],
                    kY: colors[_random.nextInt(5)],
                    kZ: colors[_random.nextInt(5)],
                    lA: colors[_random.nextInt(5)],
                    lB: colors[_random.nextInt(5)],
                    lC: colors[_random.nextInt(5)],
                    lI: colors[_random.nextInt(5)],
                    lK: colors[_random.nextInt(5)],
                    lR: colors[_random.nextInt(5)],
                    lS: colors[_random.nextInt(5)],
                    lT: colors[_random.nextInt(5)],
                    lU: colors[_random.nextInt(5)],
                    lV: colors[_random.nextInt(5)],
                    lY: colors[_random.nextInt(5)],
                    mA: colors[_random.nextInt(5)],
                    mC: colors[_random.nextInt(5)],
                    mD: colors[_random.nextInt(5)],
                    mE: colors[_random.nextInt(5)],
                    mF: colors[_random.nextInt(5)],
                    mG: colors[_random.nextInt(5)],
                    mH: colors[_random.nextInt(5)],
                    mK: colors[_random.nextInt(5)],
                    mL: colors[_random.nextInt(5)],
                    mM: colors[_random.nextInt(5)],
                    mN: colors[_random.nextInt(5)],
                    mO: colors[_random.nextInt(5)],
                    mP: colors[_random.nextInt(5)],
                    mQ: colors[_random.nextInt(5)],
                    mR: colors[_random.nextInt(5)],
                    mS: colors[_random.nextInt(5)],
                    mT: colors[_random.nextInt(5)],
                    mU: colors[_random.nextInt(5)],
                    mV: colors[_random.nextInt(5)],
                    mW: colors[_random.nextInt(5)],
                    mX: colors[_random.nextInt(5)],
                    mY: colors[_random.nextInt(5)],
                    mZ: colors[_random.nextInt(5)],
                    nA: colors[_random.nextInt(5)],
                    nC: colors[_random.nextInt(5)],
                    nE: colors[_random.nextInt(5)],
                    nF: colors[_random.nextInt(5)],
                    nG: colors[_random.nextInt(5)],
                    nI: colors[_random.nextInt(5)],
                    nL: colors[_random.nextInt(5)],
                    nO: colors[_random.nextInt(5)],
                    nP: colors[_random.nextInt(5)],
                    nR: colors[_random.nextInt(5)],
                    nU: colors[_random.nextInt(5)],
                    nZ: colors[_random.nextInt(5)],
                    oM: colors[_random.nextInt(5)],
                    pA: colors[_random.nextInt(5)],
                    pE: colors[_random.nextInt(5)],
                    pF: colors[_random.nextInt(5)],
                    pG: colors[_random.nextInt(5)],
                    pH: colors[_random.nextInt(5)],
                    pK: colors[_random.nextInt(5)],
                    pL: colors[_random.nextInt(5)],
                    pM: colors[_random.nextInt(5)],
                    pN: colors[_random.nextInt(5)],
                    pR: colors[_random.nextInt(5)],
                    pS: colors[_random.nextInt(5)],
                    pT: colors[_random.nextInt(5)],
                    pW: colors[_random.nextInt(5)],
                    pY: colors[_random.nextInt(5)],
                    qA: colors[_random.nextInt(5)],
                    rE: colors[_random.nextInt(5)],
                    rO: colors[_random.nextInt(5)],
                    rS: colors[_random.nextInt(5)],
                    rU: colors[_random.nextInt(5)],
                    rW: colors[_random.nextInt(5)],
                    sA: colors[_random.nextInt(5)],
                    sB: colors[_random.nextInt(5)],
                    sC: colors[_random.nextInt(5)],
                    sD: colors[_random.nextInt(5)],
                    sE: colors[_random.nextInt(5)],
                    sG: colors[_random.nextInt(5)],
                    sH: colors[_random.nextInt(5)],
                    sI: colors[_random.nextInt(5)],
                    sJ: colors[_random.nextInt(5)],
                    sK: colors[_random.nextInt(5)],
                    sL: colors[_random.nextInt(5)],
                    sM: colors[_random.nextInt(5)],
                    sN: colors[_random.nextInt(5)],
                    sO: colors[_random.nextInt(5)],
                    sR: colors[_random.nextInt(5)],
                    sS: colors[_random.nextInt(5)],
                    sT: colors[_random.nextInt(5)],
                    sV: colors[_random.nextInt(5)],
                    sX: colors[_random.nextInt(5)],
                    sY: colors[_random.nextInt(5)],
                    sZ: colors[_random.nextInt(5)],
                    tC: colors[_random.nextInt(5)],
                    tD: colors[_random.nextInt(5)],
                    tF: colors[_random.nextInt(5)],
                    tG: colors[_random.nextInt(5)],
                    tH: colors[_random.nextInt(5)],
                    tJ: colors[_random.nextInt(5)],
                    tK: colors[_random.nextInt(5)],
                    tL: colors[_random.nextInt(5)],
                    tM: colors[_random.nextInt(5)],
                    tN: colors[_random.nextInt(5)],
                    tO: colors[_random.nextInt(5)],
                    tR: colors[_random.nextInt(5)],
                    tT: colors[_random.nextInt(5)],
                    tV: colors[_random.nextInt(5)],
                    tW: colors[_random.nextInt(5)],
                    tZ: colors[_random.nextInt(5)],
                    uA: colors[_random.nextInt(5)],
                    uG: colors[_random.nextInt(5)],
                    uM: colors[_random.nextInt(5)],
                    uS: colors[_random.nextInt(5)],
                    uY: colors[_random.nextInt(5)],
                    uZ: colors[_random.nextInt(5)],
                    vA: colors[_random.nextInt(5)],
                    vC: colors[_random.nextInt(5)],
                    vE: colors[_random.nextInt(5)],
                    vG: colors[_random.nextInt(5)],
                    vI: colors[_random.nextInt(5)],
                    vN: colors[_random.nextInt(5)],
                    vU: colors[_random.nextInt(5)],
                    wF: colors[_random.nextInt(5)],
                    wS: colors[_random.nextInt(5)],
                    xK: colors[_random.nextInt(5)],
                    yE: colors[_random.nextInt(5)],
                    yT: colors[_random.nextInt(5)],
                    zA: colors[_random.nextInt(5)],
                    zM: colors[_random.nextInt(5)],
                    zW: colors[_random.nextInt(5)],
                  ),
                ),
              ),
              // Creates 8% from right side so the map looks more centered.
              Container(width: MediaQuery.of(context).size.width * 0.08),
            ],
          ),
        ),
      ),
    );
  }
}