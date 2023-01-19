import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          hintText: 'Search',
          suffixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

}