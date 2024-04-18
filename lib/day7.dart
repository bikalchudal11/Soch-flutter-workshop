// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:day1/day7Nav.dart';
import 'package:flutter/material.dart';

class Day7 extends StatefulWidget {
  const Day7({super.key});

  @override
  State<Day7> createState() => _Day7State();
}

class _Day7State extends State<Day7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Day 7",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Click on a number to see its table",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 20,
              children: [
                ReuseAbleButton(
                  number: 1,
                ),
                ReuseAbleButton(
                  number: 2,
                ),
                ReuseAbleButton(
                  number: 3,
                ),
                ReuseAbleButton(
                  number: 4,
                ),
                ReuseAbleButton(
                  number: 5,
                ),
                ReuseAbleButton(
                  number: 6,
                ),
                ReuseAbleButton(
                  number: 7,
                ),
                ReuseAbleButton(
                  number: 8,
                ),
                ReuseAbleButton(
                  number: 9,
                ),
                ReuseAbleButton(
                  number: 10,
                ),
                ReuseAbleButton(
                  number: 11,
                ),
                ReuseAbleButton(
                  number: 12,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseAbleButton extends StatelessWidget {
  int number;
  ReuseAbleButton({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 90,
        width: 90,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Day7Nav(
                          number: number,
                        )));
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              number.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
