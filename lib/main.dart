// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:day1/calculator/caculator_page.dart';
import 'package:day1/chat_ui/chat_home.dart';
import 'package:day1/day4.dart';
import 'package:day1/day5%20HW/score_ui.dart';
import 'package:day1/day5.dart';
import 'package:day1/gallary/gallary_page.dart';
import 'package:day1/home_page.dart';
import 'package:day1/weather_widget/weather_widget.dart';
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
      home: ChatHome(),
    );
  }
}
