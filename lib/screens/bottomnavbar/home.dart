// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:blinkit_clone/list_of_dynamics/diwalisale.dart';
import 'package:blinkit_clone/widgets/appbar.dart';
import 'package:blinkit_clone/widgets/bestseller.dart';
import 'package:blinkit_clone/widgets/category_page_design.dart';
import 'package:blinkit_clone/widgets/custome_text.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var diwaligifts = Diwalisale.diwaali_iteams();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Custome_Appbar(backgroundcolor: Colors.red, textcolor: Colors.white),
            Divider(height: 3),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/diwali1.png",
                        height: 50,
                        width: 50,
                      ),
                      Image.asset(
                        "assets/images/diwali2.png",
                        height: 50,
                        width: 50,
                      ),
                      CustomeText(
                        text: "Mega Diwali Sale",
                        fsize: 20,
                        fcolor: Colors.white,
                        family: "Times new Roman",
                        fontWeight: FontWeight.bold,
                      ),
                      Image.asset(
                        "assets/images/diwali3.png",
                        height: 50,
                        width: 50,
                      ),
                      Image.asset(
                        "assets/images/diwali4.png",
                        height: 50,
                        width: 50,
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: diwaligifts.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 110,
                            width: 90,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 222, 170, 231),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: CustomeText(
                                    text: diwaligifts[index]['name'],
                                    fsize: 15,
                                    fcolor: Colors.black,
                                    family: "bold",
                                  ),
                                ),
                                Image.asset(diwaligifts[index]['img'].toString()),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Bestseller(
                    imgpath: "assets/images/candles.png",
                    text: "Golden Glass Wooden\n Candle",
                    time: "25 MIN",
                    price: "RS. 40",
                    callback: () {},
                  ),
                  SizedBox(width: 5),
                  Bestseller(
                    imgpath: "assets/images/mithai.png",
                    text: "Royal Gulab Jamun\n By Bikano ",
                    callback: () {},
                    time: "10 MIN",
                    price: "RS. 60",
                  ),
                  SizedBox(width: 8),
                  Bestseller(
                    imgpath: "assets/images/bhujia.png",
                    text: "Bikaji Bhujia\n (100g)",
                    callback: () {},
                    time: "40 MIN",
                    price: "RS. 600",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomeText(
                text: "Grocery and Kitchen",
                fsize: 15,
                fcolor: Colors.black,
                family: "extrabold",
              ),
            ),
            SizedBox(height: 130, child: CategoryPageDesign.grocary_iteam_1()),
          ],
        ),
      ),
    );
  }
}
