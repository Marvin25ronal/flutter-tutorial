
import 'package:flutter/material.dart';
import 'package:platzi_tutorial/hex_color.dart';

class FloatingButton extends StatefulWidget {
  const FloatingButton({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FloatingButton();
  }
}

class _FloatingButton extends State<FloatingButton> {
  void onPressed() {
    print('hola');
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: HexColor.fromHex('#e63946'),
      mini: true,
      tooltip: "Enviar",
      onPressed: onPressed,
      child: const Icon(
        Icons.headphones,
      ),
    );
  }
}
