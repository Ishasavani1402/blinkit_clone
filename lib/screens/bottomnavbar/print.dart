import 'package:flutter/material.dart';

class Print extends StatefulWidget {
  const Print({ Key? key }) : super(key: key);

  @override
  _PrintState createState() => _PrintState();
}

class _PrintState extends State<Print> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("Printer"),
      ),
    );
  }
}