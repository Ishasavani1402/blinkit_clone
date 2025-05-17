// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:blinkit_clone/widgets/appbar.dart';
import 'package:blinkit_clone/widgets/custome_text.dart';
import 'package:blinkit_clone/widgets/documents.dart';
import 'package:flutter/material.dart';

class Print extends StatefulWidget {
  @override
  _PrintState createState() => _PrintState();
}

class _PrintState extends State<Print> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custome_Appbar(backgroundcolor: Colors.amberAccent,
      textcolor: Colors.black,),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 243, 217, 204),
        child: Column(
          children: [
            SizedBox(height: 25),
            CustomeText(
              text: "Print Store",
              fsize: 30,
              fcolor: Colors.black,
              family: "extrabold",
            ),
            SizedBox(height: 5),
            CustomeText(
              text: "Blinkit ensures secure prints at every stage",
              fsize: 15,
              fcolor: Colors.black,
              family: "regular",
            ),
            SizedBox(height: 30),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 10),
                        child: CustomeText(
                          text: "Documents",
                          fsize: 15,
                          fcolor: Colors.black,
                          family: "extrabold",
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Documents(text: "Price starting at rs 3/page"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Documents(text: "Paper quality: 70 GSM"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Documents(text: "Single side prints"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.green,
                          ),

                          child: Center(
                            child: CustomeText(
                              text: "Upload Files",
                              fsize: 15,
                              fcolor: Colors.white,
                              family: "Extrabold",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Image.asset(
                    "assets/images/document.png",
                    width: 150,
                    height: 150,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
