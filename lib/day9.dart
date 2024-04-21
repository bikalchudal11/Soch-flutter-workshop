// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Day9 extends StatefulWidget {
  const Day9({super.key});

  @override
  State<Day9> createState() => _Day9State();
}

class _Day9State extends State<Day9> {
  int noOfBalls = 0;
  double circleSize = 30;
  bool isBGGreen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text(
          "Stateful Widgets",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    for (int i = 0; i < noOfBalls; i++)
                      Container(
                        margin: EdgeInsets.all(5),
                        height: circleSize,
                        width: circleSize,
                        constraints: BoxConstraints(
                          maxHeight: 300,
                          minHeight: 30,
                          maxWidth: 300,
                          minWidth: 30,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                          border: Border.all(width: 1.5),
                        ),
                      ),
                  ],
                ),
              ),
            ),

            //for circle size

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Circle Size:",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (circleSize <= 30) {
                            circleSize;
                          } else {
                            circleSize = circleSize - 10;
                          }
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.5),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          Icons.remove,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.5),
                          bottom: BorderSide(width: 1.5),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '30',
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (circleSize >= 300) {
                            circleSize;
                          } else {
                            circleSize = circleSize + 10;
                          }
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.5),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //for no.of balls
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "No of Balls:",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        if (noOfBalls <= 0) {
                          noOfBalls;
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("Cannot reduce more than 0")));
                        } else {
                          noOfBalls = noOfBalls - 1;
                        }
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.5),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          Icons.remove,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(width: 1.5),
                          bottom: BorderSide(width: 1.5),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          noOfBalls.toString(),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (noOfBalls >= 100) {
                          noOfBalls;
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.red,
                              content: Text("Cannot increase more than 100")));
                        } else {
                          noOfBalls = noOfBalls + 1;
                        }
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1.5),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //for no.of balls
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "BG color green:",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                Switch(value: false, onChanged: (value) {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
