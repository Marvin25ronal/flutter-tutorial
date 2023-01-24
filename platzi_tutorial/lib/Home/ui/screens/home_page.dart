import 'package:flutter/material.dart';
import 'package:platzi_tutorial/widgets/header.dart';
import 'package:platzi_tutorial/Home/ui/widget/place_description.dart';
import 'package:platzi_tutorial/Home/ui/widget/review_list.dart';
class HomePage extends StatelessWidget {
  final String descriptiontext =
      'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum';

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            PlaceDescription('Location', 5, descriptiontext),
            ReviewList()
          ],
        ),
        Header()
      ],
    );
  }
}
