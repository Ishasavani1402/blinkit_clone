// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:blinkit_clone/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custome_Appbar(
        backgroundcolor: const Color.fromARGB(255, 243, 50, 50),
      ),
      body: Column(
        children: [
          Divider(color: Colors.black, height: 2.5),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.redAccent,
          ),
        ],
      ),
    );
  }
}
