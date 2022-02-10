import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<String>grp=[
    "A+",
    "A-",
    "B+",
    "B-",
    "AB+",
    "AB-",
    "O+",
    "O-"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Padding(
          padding: const EdgeInsets.all(10),
          child:
          SafeArea(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 250,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.grey[400],
                      ),
                      child: TextFormField(
                        enabled: true,

                        decoration: InputDecoration(
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search)
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red[500],
                      ),
                      padding: EdgeInsets.all(4),
                      child: Icon(Icons.add,color: Colors.white,),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      foregroundImage: AssetImage("asset/top2.png"),
                      //radius: 3,
                    )
                  ],
                ),
                Padding(padding: EdgeInsets.all(15),
                  child:   Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 5,right: 10),
                        child:  Container(
                            width: 120,
                            height: 27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.orange,
                            ),
                            padding: EdgeInsets.all(3),
                            child: Center(
                              child: Text("DashBoard"),
                            )
                        ),),
                      Container(
                          width: 120,
                          height: 27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey,
                          ),
                          padding: EdgeInsets.all(3),
                          child: Center(
                            child: Text("Doner List"),
                          )
                      ),
                    ],
                  ),),
                Divider(

                  thickness: 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Active Blood",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height* .35,
                  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 50,
                      crossAxisSpacing: 15,mainAxisSpacing: 15
                  ),
                    itemBuilder: (context,i)=>Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(7),
                        ),
                        padding: EdgeInsets.all(8),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("A+",style: TextStyle(color: Colors.white,fontSize: 20),),//style: TextStyle(fontSize: 10),),
                            Container(
                                width: 37,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child:Center(
                                  child: Text("10",style: TextStyle(fontSize: 20),),
                                )

                            )
                          ],
                        )
                    ),
                    itemCount: 8,
                    padding: EdgeInsets.all(10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10, bottom: 10),
                  child: Text("All Blood",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height* .35,
                  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: 50,
                      crossAxisSpacing: 15,mainAxisSpacing: 15
                  ),
                    itemBuilder: (context,i)=>Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(8),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("A+",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 25),),//style: TextStyle(fontSize: 10),),
                            Container(
                                width: 37,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child:Center(
                                  child: Text("10",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                                )

                            )
                          ],
                        )
                    ),
                    itemCount: 8,
                    padding: EdgeInsets.all(10),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}