import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:slogan/screens/loginscreen.dart';

class splashscreen extends StatefulWidget {
  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initstate() {
    super.initState();
    _navigatepage();
  }

  _navigatepage() async {
    await Future.delayed(
      Duration(seconds: 5),
      () {},
    );
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => loginpagescreen(),
        ));
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 201, 25, 69)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 250,
                child: Image.asset(
                  "assets/img.png",
                  fit: BoxFit.cover,
                ),
              ),
              Text("Slogan",
                  style: GoogleFonts.handlee(
                    textStyle: TextStyle(fontSize: 40, color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
