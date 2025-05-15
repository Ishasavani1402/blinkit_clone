// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Homescreenstate();
}

class Homescreenstate extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("blinkit")),
      body: Column(
        children: [
          Center(child: Image.asset("assets/images/blinkit.png")),
          SizedBox(height: 20),
          Text(
            "Welcome to blinkit",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              // fontWeight: FontWeight.bold,
              fontFamily: "bold",
            ),
          ),
        ],
      ),
    );
  }
}
