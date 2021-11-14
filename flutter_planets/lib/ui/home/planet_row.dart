import 'package:flutter/material.dart';
import 'package:flutter_planets/model/planet.dart';

class PlanetRow extends StatelessWidget {
  final Planet planet;
  PlanetRow(this.planet);
  

    
  @override
  Widget build(BuildContext context) {
    final baseTextStyle = TextStyle(fontFamily: "Poppins");

    final headerTextStyle = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
    );

    final regularTextStyle = baseTextStyle.copyWith(
        color: const Color(0xffb6b2df),
        fontSize: 9.0,
        fontWeight: FontWeight.w400);

    final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 12.0);

    Widget _planetValue({required String value, required String image}) {
      return new Row(
        children: <Widget>[
          new Image.asset(image, height: 12.0),
          new Container(width: 8.0),
          new Text(planet.gravity, style: regularTextStyle),
        ]
      );
    }


    final planetCardContent = Container(
      margin: EdgeInsets.fromLTRB(76.0, 16.0, 16.0, 16.0),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 4.0,
          ),
          Text(
            planet.name,
            style: headerTextStyle,
          ),
          Container(
            height: 10.0,
          ),
          Text(
            planet.location,
            style: subHeaderTextStyle,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 8.0),
            height: 2.0,
            width: 18.0,
            color: Color(0xff00c6ff),
          ),
          Row(
            children: [
              new Expanded(
                child: _planetValue(
                  value: planet.distance,
                  image: 'assets/img/ic_distance.png')
              ),
              new Expanded(
                child: _planetValue(
                  value: planet.gravity,
                  image: 'assets/img/ic_gravity.png')
              )
            ],
          )
        ],
      ),
    );

    final planetCard = Container(
      height: 130.0,
      child: planetCardContent,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    final planetThumbnail = Container(
      margin: EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      alignment: FractionalOffset.centerLeft,
      child: Image(
        image: AssetImage(planet.image),
        height: 92.0,
        width: 92.0,
      ),
    );

    return Container(
      height: 130.0,
      margin: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0,
      ),
      child: Stack(
        children: [planetCard, planetThumbnail],
      ),
    );
  }
}
