import 'package:flutter/material.dart';
import 'package:smart_blood/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
        name: 'smart_blood',
        options: FirebaseOptions(
            apiKey: "AIzaSyC-4lLIId2PCQsCdtZhX6FwZyUsp1e32Og",
            appId: "1:365019926871:android:81d4f9b7f3f8dd928eee12",
            messagingSenderId: "365019926871",
            authDomain:"smart-blood-770cb.firebaseapp.com",
            databaseURL: "https://{smart-blood-770cb}.firebaseio.com",
            projectId: "smart-blood-770cb")
    ).whenComplete(() {
      print("completedAppInitialize");
    });
  }
  runApp(
      MaterialApp(
          home: MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This  // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen()
    );
  }
}
