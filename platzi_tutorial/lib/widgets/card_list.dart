import 'package:flutter/material.dart';
import 'package:platzi_tutorial/widgets/image_card.dart';

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: const EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: [
          ImageCard('assets/img/page1.png'),
          ImageCard('assets/img/page2.png'),
          ImageCard('assets/img/page3.png'),
          ImageCard('assets/img/page4.png'),
         // ImageCard('assets/img/img5.png'),
        ],
      ),
    );
  }
}
