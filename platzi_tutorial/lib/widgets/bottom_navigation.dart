import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:platzi_tutorial/widgets/hex_color.dart';
import 'package:platzi_tutorial/Animes/ui/screens/waifu_screen.dart';

import 'package:platzi_tutorial/Home/ui/screens/home_page.dart';
import 'package:platzi_tutorial/User/ui/screens/profile_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BottomNavigation();
  }
}

class _BottomNavigation extends State<BottomNavigation> {
  final List<Widget> _children = const [HomePage(),WaifuScreen(), ProfilePage()];
  int index = 0;
  void onTap(int i) {
    setState(() {
      index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[index],
      // bottomNavigationBar: Theme(
      //   data: Theme.of(context).copyWith(
      //       canvasColor: Colors.white,
      //       primaryColor: HexColor.fromHex('#fb8500'),
      //       textTheme: Theme.of(context)
      //           .textTheme
      //           .copyWith(caption: const TextStyle(color: Colors.grey))),
      //   child: BottomNavigationBar(
      //     onTap: onTap,
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      //       BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      //     ],
      //     currentIndex: index,
      //   ),
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        color: HexColor.fromHex('#fb8500'),
        backgroundColor: Colors.white,
        buttonBackgroundColor: HexColor.fromHex('#e9ecef'),
        items: const [
          Icon(Icons.home, size: 30),
          Icon(Icons.book_rounded, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: onTap,
      ),
    );
  }
}
