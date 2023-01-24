import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platzi_tutorial/widgets/gradient_back.dart';
import 'package:platzi_tutorial/widgets/hex_color.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack('Usuario',MediaQuery.of(context).size.height * 0.35, true),
        Column(
          children: [
            ProfileInfo(),
             Menu()],
        )
      ],
    );
  }
}

class Menu extends StatelessWidget {
  Widget createIconButton(IconData iconData,
      {bool mini = false, bool active = false}) {
    return Expanded(
      flex: 1,
      child: Container(
        height: mini ? 35 : 60,
        width: mini ? 35 : 60,
        child: Center(
          child: Icon(
            iconData,
            color: HexColor.fromHex('#e63946'),
            size: mini ? 20 : 50,
          ),
        ),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: active ? Colors.white : Colors.white54),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(children: [
        createIconButton(Icons.bookmark_add_rounded, mini: true, active: true),
        createIconButton(Icons.tv, mini: true),
        createIconButton(Icons.add, mini: false,active: true),
        createIconButton(Icons.favorite, mini: true),
        createIconButton(Icons.person, mini: true),
      ]),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  final image = Container(
    margin: const EdgeInsets.only(
      top: 20,
      left: 20,
    ),
    height: 80,
    width: 80,
    decoration: BoxDecoration(
      border: Border.all(width: 1.5, color: HexColor.fromHex('#f46b45')),
      shape: BoxShape.circle,
      image: const DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/img/profile.jpeg'),
      ),
    ),
  );
  final username = Container(
    margin: const EdgeInsets.only(
      left: 20.0,
    ),
    child: const Text('Marvin Martínez',
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Nunito",
            fontSize: 17.0,
            fontWeight: FontWeight.w900,
            color: Colors.white)),
  );

  final email = Container(
    margin: const EdgeInsets.only(
      left: 20.0,
    ),
    child: const Text('marvin1ronal@gmail.com',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Nunito",
          fontSize: 13.0,
          color: Colors.white70,
        )),
  );

  late final name = Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [username, email],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 100),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [image, name],
        ));
  }
}
