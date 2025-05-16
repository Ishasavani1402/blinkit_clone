// ignore_for_file: use_key_in_widget_constructors, override_on_non_overriding_member, non_constant_identifier_names

import 'package:blinkit_clone/list_of_dynamics/grocery.dart';
import 'package:blinkit_clone/list_of_dynamics/household.dart';
import 'package:blinkit_clone/list_of_dynamics/snacks.dart';
import 'package:blinkit_clone/widgets/custome_text.dart';
import 'package:flutter/material.dart';

class CategoryPageDesign {
  static var grocary = Grocery.grocery_iteams();

  static var grocary_2 = Grocery.grocery_iteams_2();

  static var snack_iteams = Snacks.snacks();

  static var house = Household.householdMembers();

  @override
  static grocary_iteam_1() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: grocary.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(grocary[index]['img'].toString()),
              ),
            ),
            SizedBox(height: 5),
            CustomeText(
              text: grocary[index]['name'],
              fsize: 12,
              fcolor: Colors.black,
              family: "regular",
            ),
          ],
        );
      },
    );
  }

  static grocary_iteam_2() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: grocary_2.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(grocary_2[index]['img'].toString()),
              ),
            ),
            SizedBox(height: 5),
            CustomeText(
              text: grocary_2[index]['name'],
              fsize: 12,
              fcolor: Colors.black,
              family: "regular",
            ),
          ],
        );
      },
    );
  }

  static snack_drink() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: snack_iteams.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(snack_iteams[index]['img'].toString()),
              ),
            ),
            SizedBox(height: 5),
            CustomeText(
              text: snack_iteams[index]['name'],
              fsize: 12,
              fcolor: Colors.black,
              family: "regular",
            ),
          ],
        );
      },
    );
  }

  static house_essential() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: house.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(house[index]['img'].toString()),
              ),
            ),
            SizedBox(height: 5),
            CustomeText(
              text: house[index]['name'],
              fsize: 12,
              fcolor: Colors.black,
              family: "regular",
            ),
          ],
        );
      },
    );
  }
}
