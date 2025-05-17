// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:blinkit_clone/widgets/custome_text.dart';
import 'package:flutter/material.dart';

class Documents extends StatelessWidget {
  String text;

  Documents({required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star_border_purple500_rounded, color: Colors.grey),
        SizedBox(width: 5),
        CustomeText(
          text: text,
          fsize: 15,
          fcolor: Colors.grey,
          family: "bold",
        ),
      ],
    );
  }
}
