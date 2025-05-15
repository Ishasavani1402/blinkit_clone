// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:blinkit_clone/widgets/appbar.dart';
import 'package:flutter/material.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: Custome_Appbar(),);
  }
}
