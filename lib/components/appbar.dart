import 'package:flutter/material.dart';
import 'package:fluttericon/linearicons_free_icons.dart';

AppBar homeappbar() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Icon(
            Icons.menu,
            color: Colors.black,
            size: 20,
          ),
          Icon(
            Icons.circle_outlined,
            color: Colors.black,
            size: 20,
          )
        ],
      ),
    ),
    title: Text(
      "Home",
      style: TextStyle(color: Colors.black),
    ),
    centerTitle: true,
    actions: [
      Icon(
        Icons.search,size: 20,
        color: Colors.black,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(5,0,10,0),
        child: Icon(
          LineariconsFree.cross_circle,
          color: Colors.black,size: 20,
        ),
      ),
    ],
  );
}
