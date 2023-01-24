import 'package:flutter/material.dart';
import 'package:platzi_tutorial/widgets/hex_color.dart';


class ReviewCard extends StatelessWidget {
  String pathImage = "asset/img/img1.png";
  ReviewCard(this.pathImage, this.name, this.details, this.comment,
      {super.key});
  String name = "Marvin Martinez";
  String details = "1 review 5 photos";
  String comment = "There is an amazing place in Sri Lanka";
  late final userName = Container(
    margin: const EdgeInsets.only(
      left: 20.0,
    ),
    child: Text(name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Nunito",
          fontSize: 17.0,
        )),
  );
  late final userInfo = Container(
    margin: const EdgeInsets.only(
      left: 20.0,
    ),
    child: Text(details,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Nunito",
          fontSize: 13.0,
          color: Color(0xFFa3a5a7),
        )),
  );
  late final userComment = Container(
    margin: const EdgeInsets.only(
      left: 20.0,
      right: 20.0,
    ),
    child: Text(comment,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: "Nunito",
          fontSize: 13.0,
          fontWeight: FontWeight.w900,
        )),
  );

  late final userDetails = Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      userName,
      userInfo,
      userComment,
    ],
  );
  late final photo = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: HexColor.fromHex('#f46b45')),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ));

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        photo,
        userDetails,
      ],
    );
  }
}
