import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slogan/screens/homescreen.dart';
import 'package:slogan/screens/registerscreen.dart';
import 'package:slogan/screens/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slogan/screens/loginscreen.dart';
import 'package:slogan/screens/sloganscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Slogan",
      debugShowCheckedModeBanner: false,
      home:sloganpage(),
    );
  }
}
