import 'package:flutter/material.dart';
import 'package:platzi_tutorial/card_list.dart';
import 'package:platzi_tutorial/gradient_back.dart';

class Header extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        GradientBack('Bienvenido'),
        CardList(),
      ],
    );
  }  

}
