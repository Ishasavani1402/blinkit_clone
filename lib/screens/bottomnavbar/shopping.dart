// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:blinkit_clone/widgets/appbar.dart';
import 'package:blinkit_clone/widgets/bestseller.dart';
import 'package:blinkit_clone/widgets/custome_text.dart';
import 'package:flutter/material.dart';

class Shopping extends StatefulWidget {
  @override
  _ShoppingState createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custome_Appbar(
        backgroundcolor: Colors.amberAccent,
        textcolor: Colors.black,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              Image.asset("assets/images/cart.png", width: 100, height: 100),
              SizedBox(height: 10),
              CustomeText(
                text: "Reordering will be easy",
                fsize: 20,
                fcolor: Colors.black,
                family: "extrabold",
              ),
              CustomeText(
                text:
                    "Items you order will show up here so you can buy them again easily",
                textAlign: TextAlign.center,
                fsize: 15,
                fcolor: Colors.black,
                family: "regular",
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.5),
                    child: CustomeText(
                      text: "Bestsellers",
                      fsize: 20,
                      fcolor: Colors.black,
                      family: "bold",
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Bestseller(
                      imgpath: "assets/images/milk.png",
                      text: "Amul Taza fresh milk",
                      time: "16 MIN",
                      price: "RS. 37",
                      callback: () {},
                    ),
                    SizedBox(width: 10),
                    Bestseller(
                      imgpath: "assets/images/potato.png",
                      text: "potatos(Aloo)",
                      time: "20 MIN",
                      price: "RS. 27",
                      callback: () {},
                    ),
                    SizedBox(width: 10),
                    Bestseller(
                      imgpath: "assets/images/tomato.png",
                      text: "Hybrid Tomatos",
                      time: "25 MIN",
                      price: "RS. 40",
                      callback: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
