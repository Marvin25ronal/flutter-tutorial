import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:platzi_tutorial/gradient_back.dart';
import 'package:platzi_tutorial/header.dart';
import 'package:platzi_tutorial/place_description.dart';
import 'package:platzi_tutorial/review_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final String descriptiontext =
      'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum';
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent
            //color set to transperent or set your own color
            ));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Hola Mundo"),
        // ),
        //body:  PlaceDescription('Arco',5,descriptiontext),
        //body: ReviewList()
        body: Stack(
          children: [
            ListView(
              children: [
                PlaceDescription('Location', 5, descriptiontext),
                ReviewList()
              ],
            ),
            Header()
          ],
        ),
      ),
    );
  }
}
