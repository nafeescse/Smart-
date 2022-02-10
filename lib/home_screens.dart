import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline,size: 40,color: Colors.green,)),
          CircleAvatar(
            child: Image.network('https://previews.123rf.com/images/yupiramos/yupiramos1702/yupiramos170208539/71380623-borde-circular-con-la-silueta-del-hombre-informal-ilustraci%C3%B3n-vectorial.jpg'),
            radius: 30,
          )
        ],
        title: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey
          ),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search)
            ),
          ),
        ),

      ),
      body: Column(
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 20,top: 10),
                child: Text('Active Bloods',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
          Container(
            height:MediaQuery.of(context).size.height*.36 ,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            width: MediaQuery.of(context).size.width*.45,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('A +',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                  SizedBox(width: 20,),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Text('9',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black
                                    ),),
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            width: MediaQuery.of(context).size.width*.45,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('A -',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                  SizedBox(width: 20,),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Text('2',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black
                                    ),),
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            width: MediaQuery.of(context).size.width*.45,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('B +',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                  SizedBox(width: 20,),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Text('30',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black
                                    ),),
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            width: MediaQuery.of(context).size.width*.45,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('B -',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                  SizedBox(width: 20,),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Text('1',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black
                                    ),),
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            width: MediaQuery.of(context).size.width*.45,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('AB +',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                  SizedBox(width: 20,),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Text('25',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black
                                    ),),
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            width: MediaQuery.of(context).size.width*.45,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('AB -',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                  SizedBox(width: 20,),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Text('0',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black
                                    ),),
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            width: MediaQuery.of(context).size.width*.45,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('O +',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                  SizedBox(width: 20,),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Text('10',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black
                                    ),),
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.all(Radius.circular(8))
                            ),
                            width: MediaQuery.of(context).size.width*.45,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text('O -',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                  SizedBox(width: 20,),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Text('9',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.black
                                    ),),
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    ),

                  ],
                ),
              ],
            )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(left: 20,top: 10),
                child: Text('All Bloods',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
          Container(
              height:MediaQuery.of(context).size.height*.36 ,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              width: MediaQuery.of(context).size.width*.45,
                              height: 50,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('A +',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                    SizedBox(width: 20,),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Text('15',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black
                                      ),),
                                    )
                                  ],
                                ),
                              )
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              width: MediaQuery.of(context).size.width*.45,
                              height: 50,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('A -',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                    SizedBox(width: 20,),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Text('2',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black
                                      ),),
                                    )
                                  ],
                                ),
                              )
                          )
                        ],
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              width: MediaQuery.of(context).size.width*.45,
                              height: 50,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('B +',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                    SizedBox(width: 20,),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Text('50',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black
                                      ),),
                                    )
                                  ],
                                ),
                              )
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              width: MediaQuery.of(context).size.width*.45,
                              height: 50,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('B -',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                    SizedBox(width: 20,),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Text('1',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black
                                      ),),
                                    )
                                  ],
                                ),
                              )
                          )
                        ],
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              width: MediaQuery.of(context).size.width*.45,
                              height: 50,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('AB +',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                    SizedBox(width: 20,),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Text('35',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black
                                      ),),
                                    )
                                  ],
                                ),
                              )
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              width: MediaQuery.of(context).size.width*.45,
                              height: 50,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('AB -',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                    SizedBox(width: 20,),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Text('0',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black
                                      ),),
                                    )
                                  ],
                                ),
                              )
                          )
                        ],
                      ),

                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              width: MediaQuery.of(context).size.width*.45,
                              height: 50,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('O +',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                    SizedBox(width: 20,),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Text('20',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black
                                      ),),
                                    )
                                  ],
                                ),
                              )
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(8))
                              ),
                              width: MediaQuery.of(context).size.width*.45,
                              height: 50,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('O -',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                    SizedBox(width: 20,),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Text('9',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.black
                                      ),),
                                    )
                                  ],
                                ),
                              )
                          )
                        ],
                      ),

                    ],
                  ),
                ],
              )
          ),

        ]
      ),
    );
  }
}
