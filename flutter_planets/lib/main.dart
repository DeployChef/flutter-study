import 'package:flutter/material.dart';
import 'package:flutter_planets/model/planet.dart';
import 'package:flutter_planets/ui/home/detail_page.dart';
import 'package:flutter_planets/ui/home/home_page.dart';

void main() {
  runApp(MaterialApp(
    title: "Planets 2.0",
    home: HomePage(),
    routes: <String, WidgetBuilder>{
      '/detail': (_) => DetailPage(planets[0]),
    },
  ));
}
