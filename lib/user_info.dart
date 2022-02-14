import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_blood/Home.dart';
import 'package:smart_blood/signup_screen.dart';
import 'package:smart_blood/home_screens.dart';

class UserForm extends StatefulWidget {
  String pass;
  UserForm({required this.pass});
  @override
  _UserFormState createState() => _UserFormState(pass: pass);
}

class _UserFormState extends State<UserForm> {
  String pass;
  _UserFormState({required this.pass});
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _dobController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _bloodController = TextEditingController();
  List<String> gender = ["Male", "Female", "Other"];

  Future<void> _selectDateFromPicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(DateTime.now().year - 20),
      firstDate: DateTime(DateTime.now().year - 30),
      lastDate: DateTime(DateTime.now().year),
    );
    if (picked != null)
      setState(() {
        _dobController.text = "${picked.day}/ ${picked.month}/ ${picked.year}";
      });
  }

  sendUserDataToDataBase() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    var currentUser = _auth.currentUser;
    CollectionReference _collectionRef =
        FirebaseFirestore.instance.collection(_bloodController.text);
    print(currentUser!.email);
    return await _collectionRef
        .doc(pass)
        .set({
          "name": _nameController.text,
          "phone": _phoneController.text,
          "dob": _dobController.text,
          "gender": _genderController.text,
          "age": _ageController.text,
          "blood_grp": _bloodController.text,
        })
        .then((value) => Navigator.push(
            context, MaterialPageRoute(builder: (_) => Screen())))
        .catchError((error) => print("something is wrong. $error"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  "Submit the form to continue.",
                  style: TextStyle(fontSize: 22, color: Colors.red),
                ),
                Text(
                  "We will not share your information with anyone.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFBBBBBB),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                myTextField(
                    "enter your name", TextInputType.text, _nameController),
                myTextField("enter your phone number", TextInputType.number,
                    _phoneController),
                TextField(
                  controller: _dobController,
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: "date of birth",
                    suffixIcon: IconButton(
                      onPressed: () => _selectDateFromPicker(context),
                      icon: Icon(Icons.calendar_today_outlined),
                    ),
                  ),
                ),
                TextField(
                  controller: _genderController,
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: "choose your gender",
                    suffixIcon: DropdownButton<String>(
                      iconSize: 40,
                      items: gender.map((String value) {
                        return DropdownMenuItem<String>(

                          value: value,
                          child:  Text(value),
                          onTap: () {
                            setState(() {
                              _genderController.text = value;
                            });
                          },
                        );
                      }).toList(),
                      onChanged: (_) {},
                    ),
                  ),
                ),
                myTextField(
                    "enter your age", TextInputType.number, _ageController),
                myTextField("enter your blood group", TextInputType.text,
                    _bloodController),

                SizedBox(
                  height: 50,
                ),

                Center(
                  child: ElevatedButton(onPressed: (){
                    print("Hello");
                    sendUserDataToDataBase();
                    print("hoise");
                  },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        elevation: 3,
                      ),

                      child: Text('continue',style: TextStyle(color: Colors.white, fontSize: 18),
                      )),
                )


                // elevated button
                // customButton("Continue", () {
                //   print("kdf");
                //
                //   sendUserDataToDataBase();
                //   debugPrint('button Clicked');
                // }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myTextField(String hintText, keyBoardType, controller) {
    return TextField(
      keyboardType: keyBoardType,
      controller: controller,
      decoration: InputDecoration(hintText: hintText),
    );
  }

  // Widget customButton(String buttonText, onPressed) {
  //   return SizedBox(
  //     width: MediaQuery.of(context).size.width * .95,
  //     height: 56,
  //     child: ElevatedButton(
  //       onPressed: onPressed,
  //       onLongPress: (){
  //         debugPrint('kkk');
  //       },
  //       child: Text(
  //         buttonText,
  //         style: TextStyle(color: Colors.white, fontSize: 18),
  //       ),
  //       style: ElevatedButton.styleFrom(
  //         primary: Colors.red,
  //         elevation: 3,
  //       ),
  //     ),
  //   );
  // }
}
