import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfileCard extends StatelessWidget {
  String title = "knuckles Mountains Range";
  String detail = "Hiking, Water fall hunting, Natural bath, Scenery & Photography";
  int steps = 123123123;
  String pathImage = "assets/img/beach.jpg";
  ProfileCard(this.pathImage,this.title,this.detail,this.steps);
  late final photo = Container(
      height: 230,
      margin: const EdgeInsets.only(
        //top: 80,
        // left: 20,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
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
      ));
  late final description = Container(
    width: double.maxFinite,
    margin: const EdgeInsets.only(top: 170,bottom: 30,left: 45,right: 45),
    padding: const EdgeInsets.all(20),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      shape: BoxShape.rectangle,
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          offset: Offset(3, 3),
          spreadRadius: -3,
          blurRadius: 5,
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(title,
            style: const TextStyle(
              fontSize: 15,
              fontFamily: 'Lato',
              fontWeight: FontWeight.bold,
            )),
          Text(detail,
              style: const TextStyle(
                fontSize: 15,
                fontFamily: 'Lato',
                color: Colors.black45,
              )),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8
                ),
                child: Text(
                  "Steps:  $steps",
                  style: const TextStyle(
                    fontSize: 17,
                    color: Color.fromRGBO(232, 166, 90, 1),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Lato"
                  ),
                ),
              )
      ],
    ),
  );

    
  @override
  Widget build(BuildContext context) {
    
    return Stack(

      children: [photo, description],
    );
  }
}
