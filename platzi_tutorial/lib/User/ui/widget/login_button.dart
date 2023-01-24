import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:platzi_tutorial/widgets/hex_color.dart';

class LoginButton extends StatefulWidget {
  double width = 0;
  double height = 0;
  final String text;
  final VoidCallback onPress;
  LoginButton(
      {super.key,
      required this.text,
      required this.onPress,
      this.width = 0,
      this.height = 0});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      child: Container(
        margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                offset: Offset(3, 3),
                spreadRadius: -3,
                blurRadius: 5,
                color: Color.fromRGBO(0, 0, 0, 1),
              )
            ],
            gradient: LinearGradient(
              colors: [
                HexColor.fromHex('#0E2E2A'),
                HexColor.fromHex('#55B193'),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(
              fontFamily: 'Nunito',
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
