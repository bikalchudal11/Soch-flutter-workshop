// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:day1/day12HW/container_edit_page.dart';
import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  String name = "Hi flutter";
  int fontSize = 18;
  double boxBorderWidth = 5;
  double boxBorderRadius = 0;
  double boxHeight = 200;
  double boxWidth = 200;
  Color textColor = Colors.black;
  Color boxColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          "Finalize your sticker",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ContainerEditPage(
                              fontSize: fontSize,
                              boxBorderRadius: boxBorderRadius,
                              boxBorderWidth: boxBorderWidth,
                              boxHeight: boxHeight,
                              boxWidth: boxWidth,
                              boxColor: boxColor,
                              boxColorChange: (changeBoxColor) {
                                setState(() {
                                  boxColor = changeBoxColor;
                                });
                              },
                              boxBorderWidthChange: (changedBoxBorderWidth) {
                                setState(() {
                                  boxBorderWidth = changedBoxBorderWidth;
                                });
                              },
                              boxBorderRadiusChange: (boxBorderRadiusChange) {
                                setState(() {
                                  boxBorderRadius = boxBorderRadiusChange;
                                });
                              },
                              boxHeightChange: (boxHeightChange) {
                                setState(() {
                                  boxHeight = boxHeightChange;
                                });
                              },
                              boxWidthChange: (boxWidthChange) {
                                setState(() {
                                  boxWidth = boxWidthChange;
                                });
                              },
                              textColor: textColor,
                              nameChange: (changedName) {
                                setState(() {
                                  name = changedName;
                                });
                              },
                              textColorChange: (changedTextColor) {
                                setState(() {
                                  textColor = changedTextColor;
                                });
                              },
                              fontSizeChange: (changedFontSize) {
                                setState(() {
                                  fontSize = changedFontSize;
                                });
                              },
                              name: name,
                            )));
              },
              child: Icon(
                Icons.edit,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: 400,
            maxWidth: 400,
            minHeight: 200,
            minWidth: 200,
          ),
          height: boxHeight,
          width: boxWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(boxBorderRadius),
              color: boxColor,
              border: Border.all(
                color: Colors.black,
                width: boxBorderWidth,
              )),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: TextStyle(
                    fontSize: fontSize.toDouble(),
                    fontWeight: FontWeight.bold,
                    color: textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
