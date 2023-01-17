import 'package:flutter/material.dart';
import 'package:platzi_tutorial/hex_color.dart';

class GradientBack extends StatelessWidget {
  String title = 'Popular';
  GradientBack(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
        HexColor.fromHex('#f46b45'),
            HexColor.fromHex('#eea849'),
        ],
        // begin: const FractionalOffset(0.2, 0.0),
        // end: const FractionalOffset(1.0, 0.6),
        // stops: const [0.0, 0.6, 0.9],
        tileMode: TileMode.clamp,
        
      ),
        
      ),
      alignment: const Alignment(-0.9, -0.7),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w400,
        ),
        
      )
    );
  }
}
