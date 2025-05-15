// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color.fromARGB(255, 204, 203, 203)),
      ),
      child: ListTile(
        leading: Icon(Icons.search),
        title: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search for products & brands",
          ),
        ),
        trailing: Icon(Icons.mic),
      ),
    );
  }
}
