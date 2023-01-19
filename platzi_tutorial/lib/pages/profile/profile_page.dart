import 'package:flutter/material.dart';
import 'package:platzi_tutorial/pages/profile/profile_card.dart';
import 'package:platzi_tutorial/pages/profile/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         Container(
          margin: const EdgeInsets.only(top: 280),
          child: ListView(
            padding: const EdgeInsets.all(25),
            children: [
              ProfileCard('assets/img/img1.png','Aventura','Grupo musical',123123123),
              ProfileCard('assets/img/img2.png','Aventura','Grupo musical',123123123),
              ProfileCard('assets/img/img3.png','Aventura','Grupo musical',123123123),
              ProfileCard('assets/img/page3.png','Aventura','Grupo musical',123123123),
             
            
            ],
          ),
        ),
        ProfileHeader(),
       
      ],
    );
  }
}
