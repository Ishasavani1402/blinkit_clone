// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:blinkit_clone/widgets/custome_text.dart';
import 'package:flutter/material.dart';

class Bestseller extends StatelessWidget {
  String imgpath;
  String text;
  VoidCallback callback;
  String time;
  String price;

  Bestseller({
    required this.imgpath,
    required this.text,
    required this.callback,
    required this.time,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: 120,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(imgpath, fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 100,
              right: 0,
              left: 50,
              child: Container(
                height: 20,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),

                child: Center(
                  child: CustomeText(
                    text: "Add",
                    fsize: 10,
                    fcolor: Colors.black,
                    family: "bold",
                  ),
                ),
              ),
            ),
          ],
        ),

        SizedBox(height: 10),
        CustomeText(
          text: text,
          fsize: 12,
          fcolor: Colors.black,
          family: "regular",
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(Icons.timer, color: Colors.brown),
            CustomeText(
              text: time,
              fsize: 10,
              fcolor: Colors.black,
              family: "regular",
            ),
          ],
        ),
        CustomeText(
          text: price,
          fsize: 20,
          fcolor: Colors.black,
          family: "extrabold",
        ),
      ],
    );
  }
}
