import 'package:flutter/material.dart';
import 'package:platzi_tutorial/widgets/hex_color.dart';

class GradientBack extends StatelessWidget {
  String title = 'Popular';
  bool settingsIcon = false;
  double height;
  // ignore: use_key_in_widget_constructors
  GradientBack(this.title,this.height, [this.settingsIcon = false]);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
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
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20.0, top: 30.0),
              child: Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold),
              ),
            ),
            if (settingsIcon)
              Container(
                margin: const EdgeInsets.only(left: 20.0, top: 30.0),
                child: const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              )
          ],
        ));
  }
}
