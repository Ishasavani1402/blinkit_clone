// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:blinkit_clone/widgets/custome_text.dart';
import 'package:flutter/material.dart';

class DiwaliSaleIteams extends StatelessWidget {
  // static var diwaligifts = Diwalisale.diwaali_iteams();
  String text;
  String img;

  DiwaliSaleIteams({required this.text, required this.img});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 130,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.pink.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomeText(
                textAlign: TextAlign.center,
                text: text,
                fsize: 15,
                fcolor: Colors.black,
                family: "bold",
              ),
            ),
            // SizedBox(height: 10),
            Image.asset(img, width: 70, height: 70),
          ],
        ),
      ),
    );
  }
}
