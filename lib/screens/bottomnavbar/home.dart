// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:blinkit_clone/list_of_dynamics/diwalisale.dart';
import 'package:blinkit_clone/widgets/appbar.dart';
import 'package:blinkit_clone/widgets/custome_text.dart';
import 'package:blinkit_clone/widgets/diwali_sale_iteams.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var diwaligifts = Diwalisale.diwaali_iteams();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Custome_Appbar(backgroundcolor: Colors.red, textcolor: Colors.white),
          Divider(height: 3),
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.red,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/diwali1.png",
                      height: 50,
                      width: 50,
                    ),
                    Image.asset(
                      "assets/images/diwali2.png",
                      height: 50,
                      width: 50,
                    ),
                    CustomeText(
                      text: "Mega Diwali",
                      fsize: 20,
                      fcolor: Colors.white,
                      family: "Times new Roman",
                    ),
                    Image.asset(
                      "assets/images/diwali3.png",
                      height: 50,
                      width: 50,
                    ),
                    Image.asset(
                      "assets/images/diwali4.png",
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
                Expanded(
                  child: DiwaliSaleIteams(
                    text: "Lights and Diyas",
                    img: "assets/images/lights.png",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
