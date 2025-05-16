// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:blinkit_clone/list_of_dynamics/grocery.dart';
import 'package:blinkit_clone/widgets/appbar.dart';
import 'package:blinkit_clone/widgets/custome_text.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  var grocary = Grocery.grocery_iteams();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custome_Appbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: grocary.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Image.asset(
                            grocary[index]['img'].toString(),
                          ),
                        ),
                      ),
                    ),
                    CustomeText(
                      text: grocary[index]['name'].toString(),
                      fsize: 12,
                      fcolor: Colors.black,
                      family: "regular",
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


