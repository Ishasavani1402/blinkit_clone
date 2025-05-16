// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:blinkit_clone/widgets/appbar.dart';
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
      appBar: Custome_Appbar(),
      body: Center(
        child: Column(
          children: [
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
                    fsize: 15,
                    fcolor: Colors.black,
                    family: "bold",
                  ),
                ),
              ],
            ),
         
         
         
          ],
        ),
      ),
    );
  }
}
