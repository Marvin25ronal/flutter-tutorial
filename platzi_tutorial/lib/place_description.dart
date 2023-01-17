import 'package:flutter/material.dart';
import 'package:platzi_tutorial/button.dart';
import 'package:platzi_tutorial/review_card.dart';

class PlaceDescription extends StatelessWidget {
  String namePlace;
  int stars;
  String placeDescriptionString;

  PlaceDescription(this.namePlace, this.stars, this.placeDescriptionString,
      {super.key});

  @override
  Widget build(BuildContext context) {
    final titleStars = Row(
      children: <Widget>[newMethod(), starsContanier()],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleStars,
        description,
        Button('Navigate'),
      ],
    );
  }

  final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3),
      child: const Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ));

  late final description = Container(
    margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
    child: Text(placeDescriptionString,
        style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Nunito",
            color: Color(0xFF56575a)),
        textAlign: TextAlign.justify),
  );

  Row starsContanier() {
    return Row(
      children: <Widget>[
        star,
        star,
        star,
        star,
        star,
      ],
    );
  }

  Container newMethod() {
    return Container(
        margin: const EdgeInsets.only(top: 320, left: 20, right: 20),
        child: Text(
          namePlace,
          style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: 'Nunito'),
          textAlign: TextAlign.left,
        ));
  }
}
