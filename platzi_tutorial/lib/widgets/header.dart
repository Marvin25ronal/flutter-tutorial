import 'package:flutter/material.dart';
import 'package:platzi_tutorial/widgets/card_list.dart';
import 'package:platzi_tutorial/widgets/gradient_back.dart';

class Header extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        GradientBack('Bienvenido',MediaQuery.of(context).size.height * 0.35),
        CardList(),
      ],
    );
  }  

}
