// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:day1/day7.dart';
import 'package:day1/day8%20HW/day8hw.dart';
import 'package:day1/day8.dart';
import 'package:day1/day9%20HW/day9hw.dart';
import 'package:day1/day9.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      debugShowCheckedModeBanner: false,
      home: Day9Hw(),
    );
  }
}
