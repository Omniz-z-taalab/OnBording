import 'package:flutter/material.dart';
import 'package:onbording/Login/Login.dart';
import 'package:onbording/OnBording/OnBording.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: OnBoarding(),
    );
  }
}
// This trailing comma makes auto-formatting nicer for build methods.
