// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, camel_case_types

import 'package:blinkit_clone/widgets/custome_text.dart';
import 'package:blinkit_clone/widgets/search.dart';
import 'package:flutter/material.dart';

class Custome_Appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 150,
      backgroundColor: Colors.amberAccent,
      automaticallyImplyLeading: false,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeText(
            text: "Blinkit in",
            fsize: 15,
            fcolor: Colors.black,
            family: "bold",
          ),
          CustomeText(
            text: "16 minutes",
            fsize: 20,
            fcolor: Colors.black,
            family: "extrabold",
          ),
          Row(
            children: [
              CustomeText(
                text: "Home -",
                fsize: 15,
                fcolor: Colors.black,
                family: "extrabold",
              ),
              CustomeText(
                text: "Isha Savani , Surat(Guj)",
                fsize: 15,
                fcolor: Colors.black,
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
