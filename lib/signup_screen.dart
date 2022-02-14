// import 'dart:html';
// import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smart_blood/Home.dart';
import 'package:smart_blood/home_screens.dart';
import 'package:smart_blood/login_screen.dart';
import 'package:smart_blood/user_info.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String pass='';
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;


  signUp()async{
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text
      );
      var authCredential = userCredential.user;
      print(authCredential!.uid);
      if(authCredential.uid.isNotEmpty){
        pass=_passwordController.text;
        print('condition satisfied');
        Navigator.push(context, CupertinoPageRoute(builder: (_)=> UserForm(pass:pass)));
      }
      else{
        Fluttertoast.showToast(msg: "Something is wrong");
      }

    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(msg: "The password provided is too weak.");

      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(msg: "The account already exists for that email.");

      }
    } catch (e) {
      print(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width*1,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.bloodtype_outlined,size: 60, color: Colors.white,),
                    Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width*1,                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Welcome Buddy!",
                            style: TextStyle(
                                fontSize: 22 , color: Colors.red),
                          ),
                          Text(
                            "Glad to see you back my buddy.",
                            style: TextStyle(
                              fontSize: 14 ,
                              color: Color(0xFFBBBBBB),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 48,
                                width: 41,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Icon(
                                    Icons.email_outlined,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    hintText: "Enter your Email",
                                    hintStyle: TextStyle(
                                      fontSize: 14 ,
                                      color: Color(0xFF414041),
                                    ),
                                    labelText: 'EMAIL',
                                    labelStyle: TextStyle(
                                      fontSize: 15 ,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 48,
                                width: 41,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Center(
                                  child: Icon(
                                    Icons.lock_outline,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextField(
                                  controller: _passwordController,
                                  obscureText: _obscureText,
                                  decoration: InputDecoration(
                                    hintText: "password must be 6 characters long",
                                    hintStyle: TextStyle(
                                      fontSize: 14 ,
                                      color: Color(0xFF414041),
                                    ),
                                    labelText: 'PASSWORD',
                                    labelStyle: TextStyle(
                                      fontSize: 15 ,
                                      color: Colors.red,
                                    ),
                                    suffixIcon: _obscureText == true
                                        ? IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _obscureText = false;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.remove_red_eye,
                                          size: 20,
                                        ))
                                        : IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _obscureText = true;
                                          });
                                        },
                                        icon: Icon(
                                          Icons.visibility_off,
                                          size: 20,
                                        )),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 50,
                          ),
                          // elevated button
                          Center(
                            child: MaterialButton(onPressed: (){
                              signUp();
                            },
                                height: 45,
                                minWidth: MediaQuery.of(context).size.width * .80,
                                color: Colors.red,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                child: Text('Sign Up',style: TextStyle(fontSize: 20,color: Colors.white),)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  fontSize: 13 ,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFBBBBBB),
                                ),
                              ),
                              GestureDetector(
                                child: Text(
                                  " Sign In",
                                  style: TextStyle(
                                    fontSize: 13 ,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.red,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) => LoginScreen()));
                                },
                              )
                            ],
                          )
                        ]
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
