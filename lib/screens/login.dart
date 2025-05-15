// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:blinkit_clone/screens/bottomnavigation.dart';
import 'package:blinkit_clone/widgets/custome_text.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/BlinkitOnboardingScreen.png",
              height: 320,
            ),
          ),
          SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/blinkit_login.png",
              height: 70,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          CustomeText(
            text: "India's Last Minutes App",
            fsize: 20,
            fcolor: Colors.black,
            family: "extrabold",
          ),
          SizedBox(height: 10),
          Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 143, 143, 143),
                  // offset: Offset.zero,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: 10),
                CustomeText(
                  text: "Isha",
                  fsize: 15,
                  fcolor: Colors.black,
                  family: "bold",
                ),
                SizedBox(height: 10),
                CustomeText(
                  text: "707xxxxxx",
                  fsize: 15,
                  fcolor: Colors.black,
                  family: "regular",
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bottomnavigation(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 223, 84, 74),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomeText(
                            text: "Log in with",
                            fsize: 19,
                            fcolor: Colors.white,
                            family: "extrabold",
                          ),
                          SizedBox(width: 10),
                          Image.asset(
                            "assets/images/zomato.png",
                            height: 70,
                            width: 70,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                CustomeText(
                  text:
                      "Access your saved addresses from Zomato automatically!",
                  textAlign: TextAlign.center,
                  fsize: 14,
                  fcolor: Colors.black,
                  family: "regular",
                ),
                SizedBox(height: 10),
                CustomeText(
                  text: "or login with phone number",
                  textAlign: TextAlign.center,
                  fsize: 20,
                  fcolor: const Color.fromARGB(255, 39, 116, 41),
                  family: "regular",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
