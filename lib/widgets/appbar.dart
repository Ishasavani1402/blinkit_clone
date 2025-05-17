// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, camel_case_types, must_be_immutable

import 'package:blinkit_clone/widgets/custome_text.dart';
import 'package:blinkit_clone/widgets/search.dart';
import 'package:flutter/material.dart';

class Custome_Appbar extends StatelessWidget implements PreferredSizeWidget {
  Color backgroundcolor;
  Color textcolor;

  Custome_Appbar({required this.backgroundcolor,
  required this.textcolor});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 150,
      backgroundColor: backgroundcolor,
      automaticallyImplyLeading: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeText(
            text: "Blinkit in",
            fsize: 15,
            fcolor: textcolor,
            family: "bold",
          ),
          CustomeText(
            text: "16 minutes",
            fsize: 20,
            fcolor: textcolor,
            family: "extrabold",
          ),
          Row(
            children: [
              CustomeText(
                text: "Home -",
                fsize: 15,
                fcolor: textcolor,
                family: "extrabold",
              ),
              CustomeText(
                text: "Isha Savani , Surat(Guj)",
                fsize: 15,
                fcolor: textcolor,
                family: "extrabold",
              ),
            ],
          ),
          SizedBox(height: 10),
          Search(),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);
}
