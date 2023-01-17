import 'package:flutter/material.dart';
import 'package:platzi_tutorial/hex_color.dart';

class Button extends StatelessWidget {
  String buttonText = 'Navigate';
  Button(this.buttonText, {super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
        height: 50,
        width: 180,
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
                HexColor.fromHex('#f46b45'),
                HexColor.fromHex('#eea849'),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Center(
            child: Text(
          buttonText,
          style: const TextStyle(
            fontFamily: 'Nunito',
            fontSize: 18,
            color: Colors.white,
          ),
        )),
      ),
      onTap: () {   
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Button pressed'))
        );
      },
    );
  }
}
