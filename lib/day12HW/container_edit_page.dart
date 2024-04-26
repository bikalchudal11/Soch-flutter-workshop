// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';

class ContainerEditPage extends StatefulWidget {
  Function(String) nameChange;
  Function(int) fontSizeChange;
  Function(Color) textColorChange;
  Function(Color) boxColorChange;
  Function(double) boxBorderWidthChange;
  Function(double) boxBorderRadiusChange;
  Function(double) boxHeightChange;
  Function(double) boxWidthChange;
  String name;
  Color textColor;
  Color boxColor;
  int fontSize;
  double boxBorderWidth;
  double boxBorderRadius;
  double boxHeight;
  double boxWidth;
  ContainerEditPage({
    super.key,
    required this.nameChange,
    required this.fontSizeChange,
    required this.textColorChange,
    required this.boxColorChange,
    required this.boxBorderWidthChange,
    required this.boxBorderRadiusChange,
    required this.boxHeightChange,
    required this.boxWidthChange,
    required this.name,
    required this.textColor,
    required this.boxColor,
    required this.fontSize,
    required this.boxBorderWidth,
    required this.boxBorderRadius,
    required this.boxHeight,
    required this.boxWidth,
  });

  @override
  State<ContainerEditPage> createState() => _ContainerEditPageState();
}

List<String> textColors = ['Red', 'Green', 'Blue', 'Black', 'White'];
List<String> boxColors = ['Red', 'Green', 'Blue', 'Black', 'White'];

class _ContainerEditPageState extends State<ContainerEditPage> {
  @override
  void initState() {
    nameController.text = widget.name;
    super.initState();
  }

  TextEditingController nameController = TextEditingController();

  String currentTextColor = textColors[3];
  String currentBoxColor = boxColors.last;
  late int fontSize = widget.fontSize;
  late double borderWidth = widget.boxBorderWidth;
  late double borderRadius = widget.boxBorderRadius;
  late double boxHeight = widget.boxHeight;
  late double boxWidth = widget.boxWidth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          "Edit Container",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Text to show:",
                style: headingStyle(),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Font size:",
                    style: headingStyle(),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (fontSize == 10) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Text("Minimum FontSize must be 10"),
                                ),
                              );
                              return;
                            } else {
                              fontSize--;
                            }
                          });
                        },
                        icon: Icon(Icons.remove),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                          height: 30,
                          width: 40,
                          child: Center(child: Text(fontSize.toString()))),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (fontSize == 50) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Text("Maximum FontSize is 50")));
                              return;
                            } else {
                              fontSize++;
                            }
                          });
                        },
                        icon: Icon(Icons.add),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Text color:",
                style: headingStyle(),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentTextColor,
                      value: textColors[0],
                      onChanged: (value) {
                        setState(() {
                          currentTextColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Red"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentTextColor,
                      value: textColors[1],
                      onChanged: (value) {
                        setState(() {
                          currentTextColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Green"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentTextColor,
                      value: textColors[2],
                      onChanged: (value) {
                        setState(() {
                          currentTextColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Blue"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentTextColor,
                      value: textColors[3],
                      onChanged: (value) {
                        setState(() {
                          currentTextColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Black"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentTextColor,
                      value: textColors[4],
                      onChanged: (value) {
                        setState(() {
                          currentTextColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("White"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Box color:",
                style: headingStyle(),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentBoxColor,
                      value: boxColors[0],
                      onChanged: (value) {
                        setState(() {
                          currentBoxColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Red"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentBoxColor,
                      value: boxColors[1],
                      onChanged: (value) {
                        setState(() {
                          currentBoxColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Green"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentBoxColor,
                      value: boxColors[2],
                      onChanged: (value) {
                        setState(() {
                          currentBoxColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Blue"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentBoxColor,
                      value: boxColors[3],
                      onChanged: (value) {
                        setState(() {
                          currentBoxColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Black"),
                ],
              ),
              Row(
                children: [
                  Radio(
                      groupValue: currentBoxColor,
                      value: boxColors[4],
                      onChanged: (value) {
                        setState(() {
                          currentBoxColor = value.toString();
                        });
                      }),
                  SizedBox(
                    width: 5,
                  ),
                  Text("White"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Box Border Width:",
                    style: headingStyle(),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (borderWidth == 1) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Text(
                                          "Minimum BoxBorderWidth must be 1")));
                              return;
                            } else {
                              borderWidth--;
                            }
                          });
                        },
                        icon: Icon(Icons.remove),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(borderWidth.toString()),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (borderWidth == 10) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Text(
                                          "Maximum BoxBorderWidth must be 10")));
                              return;
                            } else {
                              borderWidth++;
                            }
                          });
                        },
                        icon: Icon(Icons.add),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Box Border Radius:",
                    style: headingStyle(),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (borderRadius == 0) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.red,
                                  content:
                                      Text("Minimum BoxBorderRadius must be 0"),
                                ),
                              );
                              return;
                            } else {
                              borderRadius--;
                            }
                          });
                        },
                        icon: Icon(Icons.remove),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(borderRadius.toString()),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (borderRadius == 30) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.red,
                                  content: Text(
                                      "Maximum BoxBorderRadius must be 30"),
                                ),
                              );
                              return;
                            } else {
                              borderRadius++;
                            }
                          });
                        },
                        icon: Icon(Icons.add),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Box Height:",
                    style: headingStyle(),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (boxHeight == 200) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.red,
                                  content:
                                      Text("Minimum Box Height must be 200"),
                                ),
                              );
                              return;
                            } else {
                              boxHeight = boxHeight - 10;
                            }
                          });
                        },
                        icon: Icon(Icons.remove),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(boxHeight.toString()),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (boxHeight == 400) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.red,
                                  content:
                                      Text("Maximum Box Height must be 400"),
                                ),
                              );
                              return;
                            } else {
                              boxHeight = boxHeight + 10;
                            }
                          });
                        },
                        icon: Icon(Icons.add),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Box Width:",
                    style: headingStyle(),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (boxWidth == 200) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.red,
                                  content:
                                      Text("Minimum Box Width must be 200"),
                                ),
                              );
                              return;
                            } else {
                              boxWidth = boxWidth - 10;
                            }
                          });
                        },
                        icon: Icon(Icons.remove),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(boxWidth.toString()),
                      SizedBox(
                        width: 5,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (boxWidth == 400) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.red,
                                  content:
                                      Text("Maximum Box Width must be 400"),
                                ),
                              );
                              return;
                            } else {
                              boxWidth = boxWidth + 10;
                            }
                          });
                        },
                        icon: Icon(Icons.add),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(
                        Colors.white,
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.deepPurple),
                      fixedSize: MaterialStatePropertyAll(Size(
                        MediaQuery.of(context).size.width,
                        50,
                      ))),
                  onPressed: () {
                    //pop automatically
                    Navigator.pop(context);

                    //update name change
                    widget.nameChange(nameController.text);

                    //update fontSize
                    widget.fontSizeChange(fontSize);

                    //change text color
                    Color changeTC = checkColor(currentTextColor);
                    widget.textColorChange(changeTC);

                    //change box color
                    Color changeBC = checkColor(currentBoxColor);
                    widget.boxColorChange(changeBC);

                    //change the box border width
                    widget.boxBorderWidthChange(borderWidth);

                    //change the box border radius
                    widget.boxBorderRadiusChange(borderRadius);

                    //change the box height
                    widget.boxHeightChange(boxHeight);

                    //change the box width
                    widget.boxWidthChange(boxWidth);
                  },
                  child: Text(
                    "Save",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  checkColor(changeColor) {
    switch (changeColor) {
      case 'Black':
        return Colors.black;
      case 'Red':
        return Colors.red;
      case 'Green':
        return Colors.green;
      case 'Blue':
        return Colors.blue;
      default:
        return Colors.white;
    }
  }

  TextStyle headingStyle() {
    return TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w600,
    );
  }
}
