import 'package:flutter/material.dart';
import 'package:flutter_planets/model/planet.dart';
import 'package:flutter_planets/ui/home/planet_summary.dart';
import 'package:flutter_planets/ui/separator.dart';

import '../style.dart';

class DetailPage extends StatelessWidget {
  final Planet planet;

  DetailPage(this.planet);

  Container _getBackground() {
    return Container(
      child: Image.network(
        planet.picture,
        fit: BoxFit.cover,
        height: 300,
      ),
      constraints: BoxConstraints.expand(height: 300),
    );
  }

  Container _getGradient() {
    return Container(
      margin: EdgeInsets.only(top: 190),
      height: 110,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0x00736AB7), Color(0xFF736AB7)],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  Widget _getContent() {
    final _overviewTitle = "Overview".toUpperCase();
    return ListView(
      padding: EdgeInsets.fromLTRB(0, 72, 0, 32),
      children: [
        PlanetSummary(
          planet,
          horizontal: false,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _overviewTitle,
                style: Style.headerTextStyle,
              ),
              Separator(),
              Text(
                planet.description,
                style: Style.commonTextStyle,
              )
            ],
          ),
        )
      ],
    );
  }

  Container _getToolbar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: BackButton(
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color(0xFF736AB7),
        child: Stack(
          children: [
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }
}
