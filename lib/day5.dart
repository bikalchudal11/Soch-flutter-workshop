// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Day5 extends StatelessWidget {
  const Day5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 5"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            color: const Color.fromARGB(255, 172, 168, 168),
            child: Center(child: Text("Ram")),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100.0),
            child: Container(
              height: 500,
              child: Stack(
                children: [
                  Center(
                      child: Container(
                    height: 335,
                    width: 335,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black,
                          width: 5,
                        )),
                  )),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.black,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 100,
                      width: 100,
                      color: const Color.fromARGB(255, 172, 168, 168),
                      child: Center(child: Text("Hari")),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 250,
                      width: 100,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: const Color.fromARGB(255, 207, 202, 202),
            child: Icon(
              Icons.person,
              size: 100,
            ),
          )
        ],
      ),
    );
  }
}
