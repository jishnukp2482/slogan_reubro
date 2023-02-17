import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class slogancomments extends StatelessWidget {
  final String profilename;
  final Color colors;
  final String name;
  final String slogan;
  slogancomments(
      {required this.profilename, required this.colors, required this.name,required this.slogan});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10,5,10,0),
      child: Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0,10,0,0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 18,
                  backgroundColor: colors,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      profilename,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                title: Text(
                  name,
                  style:
                      TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                ),
                trailing: Container(
                  width: 120,
                  height: 30,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: Colors.black87,size: 15,
                              ),
                              Text(
                                "5",
                                style: TextStyle(color: Colors.black87),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.commentDots,
                                color: Colors.black87,size: 15,
                              ),
                              Text(
                                "10",
                                style: TextStyle(color: Colors.black87),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.share,size: 15,
                                color: Colors.black87,
                              ),
                              Text(
                                "5",
                                style: TextStyle(color: Colors.black87),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,10,5,5),
              child: Text(
                slogan,
                textAlign: TextAlign.start,
                style:
                    TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
