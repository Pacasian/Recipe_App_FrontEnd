import 'dart:math';

import 'package:flutter/material.dart';
import 'package:recipe/constant.dart';
import 'package:recipe/sample.dart';

import 'homepage/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static var random = new Random();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Comfortaa',
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: sPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: sTextColor),
      ),

      //title: 'Mom\'s Recipe App'
      home: const HomeScreen(),
    );
  }
}
