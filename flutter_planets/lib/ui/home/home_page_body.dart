import 'package:flutter/material.dart';
import 'package:flutter_planets/model/planet.dart';
import 'package:flutter_planets/ui/home/planet_row.dart';

class HomePageBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PlanetRow(planets[0]);
  }
}