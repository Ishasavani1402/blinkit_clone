// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class CustomeText extends StatelessWidget {
  String text;
  double fsize;
  Color fcolor;
  String family;
  TextAlign? textAlign;
  FontWeight? fontWeight;
  CustomeText({
    required this.text,
    required this.fsize,
    required this.fcolor,
    required this.family,
    this.textAlign,
    this.fontWeight,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fsize,
        color: fcolor,
        fontFamily: family,
        fontWeight: fontWeight,
      ),
    );
  }
}
