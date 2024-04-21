// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';

class Day8Hw extends StatefulWidget {
  const Day8Hw({super.key});

  @override
  State<Day8Hw> createState() => _Day8HwState();
}

class _Day8HwState extends State<Day8Hw> {
  int noOfBalls = 0;
  bool isBallColored = false;
  double circleSize = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        title: Text('Stateful Widgets'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
              runSpacing: 5,
              spacing: 5,
              children: [
                for (int i = 0; i < noOfBalls; i++)
                  ReuseableContainer(
                    circleSize: circleSize,
                    isCircleColored: isBallColored,
                  ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Circle size: ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            child: ButtonContainer(
                              buttonIcon: Icon(Icons.remove),
                              borderSide: Border(
                                right: BorderSide(
                                  width: 1.5,
                                ),
                              ),
                            ),
                          ),
                          Container(
                              height: 25,
                              width: 35,
                              child: Center(
                                  child: Text(
                                circleSize.toString(),
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ))),
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
                            child: ButtonContainer(
                              buttonIcon: Icon(Icons.add),
                              borderSide: Border(
                                left: BorderSide(
                                  width: 1.5,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "No of balls: ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (noOfBalls <= 0) {
                                  noOfBalls;
                                } else {
                                  noOfBalls--;
                                }
                              });
                            },
                            child: ButtonContainer(
                              buttonIcon: Icon(Icons.remove),
                              borderSide: Border(
                                right: BorderSide(
                                  width: 1.5,
                                ),
                              ),
                            ),
                          ),
                          Container(
                              height: 25,
                              width: 35,
                              child: Center(
                                  child: Text(
                                noOfBalls.toString(),
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ))),
                          InkWell(
                            onTap: () {
                              setState(() {
                                if (noOfBalls >= 100) {
                                  noOfBalls;
                                } else {
                                  noOfBalls++;
                                }
                              });
                            },
                            child: ButtonContainer(
                              buttonIcon: Icon(Icons.add),
                              borderSide: Border(
                                left: BorderSide(
                                  width: 1.5,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "BG color Green: ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Switch(
                      activeColor: Colors.green,
                      value: isBallColored,
                      onChanged: (value) {
                        setState(() {
                          isBallColored = value;
                        });
                      },
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ReuseableContainer extends StatelessWidget {
  bool isCircleColored;
  double circleSize;
  ReuseableContainer(
      {super.key, required this.isCircleColored, required this.circleSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 30, maxHeight: 300),
      height: circleSize,
      width: circleSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCircleColored ? Colors.green : Colors.white,
        border: isCircleColored ? null : Border.all(width: 1.5),
      ),
    );
  }
}

class ButtonContainer extends StatelessWidget {
  Icon buttonIcon;
  Border borderSide;
  ButtonContainer(
      {super.key, required this.borderSide, required this.buttonIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 45,
      decoration: BoxDecoration(border: borderSide),
      child: buttonIcon,
    );
  }
}
