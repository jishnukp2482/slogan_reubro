import 'package:flutter/material.dart';
import  'package:slogan/components/slogancircle.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class post extends StatelessWidget {
  List<String> postedby = ["A", "T"];
  List<Color> backgroundcolors = [Color.fromARGB(255, 4, 53, 139), Colors.blue];
  List<String> postedbytitle = ["Addbloom", "True North"];
  List<String> postedbysubtitle = ["Updated 4hrs", "Updated 4hrs"];
  List<String> postimage = ["assets/addbloom.png", "assets/truenorth.png"];
  List<String> postcontent = [
    "We engage your brand's audience by transmitting its identity, values and preserving its tone of voice on multiple channels to cut through the clutter, grab attention and move prospects along the sales funnel.",
    "Any good digital marketer understands the power of persuasion. After all, marketers are in the business of strategically convincing others to buy into a product or company. And a great logo design is one of the most powerful tools of persuasion available to a digital marketing agency."
  ];
  List<String> slogancommentname = ["Alwin Newton", "Amit Jannavi"];
  List<String> slogancomment = ["inspiring ideas like never before ","working together to create something unique"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(20)),
        height: 800,
        child: ListView.builder(
            itemCount: postedby.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                      )),
                  height: 627,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: backgroundcolors[index],
                            child: Text(postedby[index],style: TextStyle(color: Colors.white,fontSize: 25)),
                          ),
                          title: Text(
                            postedbytitle[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            postedbysubtitle[index],
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          trailing: Container(
                            height: 50,
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.calendar_month_rounded,
                                  color: Colors.black,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Remaining",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Text(
                                        "10 Days",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(postimage[index]),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(postcontent[index]),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      sloganrow(),
                                      // Align(
                                      //   widthFactor: 0.5,
                                      //   child:Row(
                                      //     children: [
                                      //       CircleAvatar(
                                      //         radius: 20,
                                      //         backgroundColor: Colors.white,
                                      //         child: CircleAvatar(
                                      //           radius: 18,
                                      //           backgroundColor: Colors.black,
                                      //         ),
                                      //       ),
                                      //         CircleAvatar(
                                      //         radius: 20,
                                      //         backgroundColor: Colors.white,
                                      //         child: CircleAvatar(
                                      //           radius: 18,
                                      //           backgroundColor: Colors.blue,
                                      //         ),
                                      //       ),
                                      //     ],
                                      //   ),
                                      // )
                                      // CircleAvatar(
                                      // radius: 15,
                                      // backgroundColor: Colors.black,
                                      // ),
                                      //  CircleAvatar(
                                      //     radius: 16,
                                      //     backgroundColor: Colors.white,
                                      //     child: CircleAvatar(
                                      //       radius: 15,
                                      //       backgroundColor: Colors.green,

                                      //     ),
                                      //   ),
                                    ],
                                  ),
                                ),
                                Container(
                                    child: Row(
                                  children: [
                                    Text(
                                      "51",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("slogans"),
                                  ],
                                )),
                              ],
                            ),
                            Container(
                                child: Row(
                              children: [
                                Text(
                                  "100",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Likes"),
                              ],
                            )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,20,10,10),
                        child: Container(
                          height: 120,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  radius: 18,
                                  child: Text("A",style: TextStyle(color: Colors.white,fontSize: 20),),
                                  backgroundColor:
                                      Color.fromARGB(255, 11, 221, 172),
                                ),
                                title: Text(
                                  slogancommentname[index],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                               

                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(70,5,0,10),
                                    child: Text(slogancomment[index],style: TextStyle(fontWeight: FontWeight.normal),),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(50,5,150,5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(Icons.favorite_border,color: Colors.black87,size: 15,),
                                          Text("5",style: TextStyle(color: Colors.black87),)
                                        ],
                                      ),
                                    ),
                              
                                    Container(
                                       child: Row(
                                        children: [
                                          Icon(FontAwesomeIcons.commentDots,color: Colors.black87 ,size: 15,),
                                          Text("10",style: TextStyle(color: Colors.black87),)
                                        ],
                                      ),
                                    ),
                                     Container(
                                       child: Row(
                                        children: [
                                          Icon(Icons.share,color: Colors.black87,size: 15,),
                                          Text("5",style: TextStyle(color: Colors.black87),)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
