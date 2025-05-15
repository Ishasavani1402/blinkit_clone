// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:blinkit_clone/screens/bottomnavbar/category.dart';
import 'package:blinkit_clone/screens/bottomnavbar/home.dart';
import 'package:blinkit_clone/screens/bottomnavbar/print.dart';
import 'package:blinkit_clone/screens/bottomnavbar/shopping.dart';
import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  @override
  _BottomnavigationState createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int currentindex = 0;
  List<Widget> screens = [Home(), Shopping(), Category(), Print()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
            label: 'shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined, color: Colors.black),
            label: 'category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.print_outlined, color: Colors.black),
            label: 'print',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 15,
        unselectedFontSize: 12,
        currentIndex: currentindex,
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: IndexedStack(index: currentindex, children: screens),
    );
  }
}
