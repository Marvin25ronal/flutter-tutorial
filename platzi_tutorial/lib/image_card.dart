import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  String image = '';
  ImageCard(this.image, {super.key});
  late final card = Container(
    height: 350,
    width: 250,
    margin: const EdgeInsets.only(
      top: 80,
      left: 20,
    ),
    decoration: BoxDecoration(
      image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
      borderRadius: BorderRadius.all(Radius.circular(10)),
      shape: BoxShape.rectangle,
      boxShadow: const <BoxShadow>[
        BoxShadow(
          offset: Offset(3, 3),
          spreadRadius: -3,
          blurRadius: 5,
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return card;
  }
}
