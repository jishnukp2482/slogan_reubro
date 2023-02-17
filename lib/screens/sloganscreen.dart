import 'package:flutter/material.dart';
import 'package:slogan/components/appbarslogan.dart';
import 'package:slogan/components/slogancomment.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";

class sloganpage extends StatelessWidget {
  List<String> pname = ["A", "A", "B", "J"];
  List<Color> colorss = [
    Colors.green,
    Color.fromARGB(255, 172, 73, 38),
    Colors.brown,
    Colors.blue
  ];
  List<String> namess = [
    "Alwin Newton",
    "Amit Jannavi",
    "Badrinath Chellaiah",
    "Jawahar Shrupali"
  ];
  List<String> comments = [
    "Inspiring ideas like never before",
    "Working together to create somenting unique",
    "Because your customers are not only present in your locally",
    "A New world is rising Let's discover it"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: appbarslogan(),
      body: Column(
        children: [
          Container(
            height: 700,

            child:
              ListView.builder(
                itemCount: pname.length,
                itemBuilder: (context, index) {
                  return slogancomments(
                      profilename: pname[index],
                      colors: colorss[index],
                      name: namess[index],
                      slogan: comments[index]);
                },
              ),
            
          ),
           Padding(
                  padding: const EdgeInsets.fromLTRB(10, 40, 20, 5),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey,width: 2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        
                        suffixIcon:MaterialButton(
  onPressed: () {},
  color: Color.fromARGB(255, 201, 25, 69),
  textColor: Colors.white,
  child:Icon(FeatherIcons.share,
    size: 24,
  ),
  padding: EdgeInsets.all(10),
  shape: CircleBorder(),
),
                        
                    
                          hintText: "Type a slogan...",
                          hintStyle: TextStyle(
                            color: Colors.black38,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(8)),
                          
                    ),
                  ),
                ),
        ],
      ),
    ));
  }
}
