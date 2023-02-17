import 'package:flutter/material.dart';

Padding sloganrow() {
  List<Color> colors = [Colors.white,Colors.black, Colors.teal];
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Container(
      height: 40,
      width: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for(int i=0;i<colors.length;i++)
          Align(
            widthFactor: 0.5,
            child: CircleAvatar(
             radius: 20,
             backgroundColor: Colors.white,
             child: CircleAvatar(
              radius: 18,
              backgroundColor: colors[i],
             ), 
            ),
          )
        ],
      ),
    ),
  );
}
