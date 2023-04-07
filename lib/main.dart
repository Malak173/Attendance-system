import 'package:attendance/Courses.dart';
import 'package:attendance/LoginScreen.dart';
import 'package:attendance/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Course.dart';
import 'Home.dart';
import 'LayOut.dart';
import 'Schaduale.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      home:  LayOut(),
      routes: {
        'LoginScreen' : (context) => LoginScreen(),
        'LayOut' : (context) => LayOut(),
        'Home' : (context) => Home(),
        'Courses' : (context) => Courses(),
        'Course' : (context) => Course(),
        'Profile' : (context) => Profile(),
        'Schaduale' : (context) => Schaduale(),
      },
    );
  }
}
