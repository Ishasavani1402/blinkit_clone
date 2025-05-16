// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:blinkit_clone/widgets/appbar.dart';
import 'package:blinkit_clone/widgets/custome_text.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custome_Appbar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.5),
            child: CustomeText(
              text: "Grocery and kitchen",
              fsize: 18,
              fcolor: Colors.black,
              family: "bold",
            ),
          ),
          SizedBox(height: 20,),
          ListView.builder(itemBuilder: (context ,index){
            return Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(10)
              ),
              
            );

          })
        ],
      ),
    );
  }
}
