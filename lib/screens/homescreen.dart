import 'package:flutter/material.dart';
import 'package:slogan/components/appbar.dart';
import 'package:slogan/components/post.dart';
class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar:homeappbar() ,
      body: ListView(
        children: [
          post(),
        ],
      ),
    ));
  }
}
