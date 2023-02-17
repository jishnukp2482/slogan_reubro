import 'package:flutter/material.dart';

AppBar appbarslogan() {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text("Slogan",style: TextStyle(color: Colors.black),),
    centerTitle: true,
    leadingWidth: 100,
    leading:Padding(
      padding: const EdgeInsets.fromLTRB(10,0,0,0),
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios,color: Colors.black,),
          Icon(Icons.circle_outlined,color: Colors.black,)
    
        ],
        
      ),
    ), 
  );
}
