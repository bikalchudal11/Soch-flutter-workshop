// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Day9Hw extends StatefulWidget {
  const Day9Hw({super.key});

  @override
  State<Day9Hw> createState() => _Day9HwState();
}

class _Day9HwState extends State<Day9Hw> {
  double bRight = 170;
  double bLeft = 170;
  double bTop = 220;
  double bBottom = 350;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text("Day 9 Hw"),
        ),
        body: Stack(
          children: [
            Positioned(
              right: bRight,
              top: bTop,
              left: bLeft,
              bottom: bBottom,
              child: Icon(
                Icons.circle,
                size: 40,
                color: Colors.deepPurple,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                color: Colors.deepPurple,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          bLeft = bLeft - 10;
                        });
                      },
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              bTop = bTop - 10;
                            });
                          },
                          child: Icon(
                            Icons.keyboard_arrow_up,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              bBottom = 350;
                              bLeft = 170;
                              bRight = 170;
                              bTop = 220;
                            });
                          },
                          child: Icon(
                            Icons.circle,
                            color: Colors.white,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              bTop = bTop + 10;
                            });
                          },
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            size: 50,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          bLeft = bLeft + 10;
                        });
                      },
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
