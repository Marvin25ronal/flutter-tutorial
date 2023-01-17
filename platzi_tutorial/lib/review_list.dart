import 'package:flutter/cupertino.dart';
import 'package:platzi_tutorial/review_card.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReviewCard('assets/img/img1.png', 'Marvin Martinez',
                '1 review * 5 photos', 'Example comment'),
            ReviewCard('assets/img/img2.png', 'Yaiza Pineda',
                '1 review * 5 photos', 'Example comment'),
            ReviewCard('assets/img/img3.png', 'Jonathan David',
                '1 review * 5 photos', 'Example comment'),
          ],
        ));
  }
}
