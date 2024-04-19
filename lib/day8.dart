// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';

class Day8 extends StatefulWidget {
  const Day8({super.key});

  @override
  State<Day8> createState() => _Day8State();
}

class _Day8State extends State<Day8> {
  int count = 0;
  bool isSwitchedOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSwitchedOn ? Colors.red : Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: Text(
          "Day 8",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Color"),
                Switch(
                  value: isSwitchedOn,
                  onChanged: (value) {
                    setState(() {
                      isSwitchedOn = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Column(
              children: [
                Text("You have pushed the button this many times."),
                SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    count.toString(),
                    style: TextStyle(
                      fontSize: 30 + 1.2 * count,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
