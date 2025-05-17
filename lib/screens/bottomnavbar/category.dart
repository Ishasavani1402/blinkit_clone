// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:blinkit_clone/list_of_dynamics/grocery.dart';
import 'package:blinkit_clone/widgets/appbar.dart';
import 'package:blinkit_clone/widgets/category_page_design.dart';
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
      appBar: Custome_Appbar(backgroundcolor: Colors.amberAccent,),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
            SizedBox(height: 130, child: CategoryPageDesign.grocary_iteam_1()),
            SizedBox(height: 130, child: CategoryPageDesign.grocary_iteam_2()),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 3, bottom: 10),
              child: CustomeText(
                text: "Snackes and Drinks",
                fsize: 18,
                fcolor: Colors.black,
                family: "bold",
              ),
            ),
            SizedBox(height: 130, child: CategoryPageDesign.snack_drink()),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 3, bottom: 10),
              child: CustomeText(
                text: "Household Essentials",
                fsize: 18,
                fcolor: Colors.black,
                family: "bold",
              ),
            ),

            SizedBox(height: 130, child: CategoryPageDesign.house_essential()),
          ],
        ),
      ),
    );
  }
}
