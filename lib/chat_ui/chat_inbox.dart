// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_const_literals_to_create_immutables

import 'package:day1/chat_ui/chat_circle_profile.dart';
import 'package:flutter/material.dart';

class ChatInbox extends StatelessWidget {
  String userName;
  int index;
  ChatInbox({
    super.key,
    required this.userName,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    Color pColor = Color.fromARGB(255, 7, 79, 203);
    Color sColor = Colors.grey;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: pColor,
        title: Column(
          children: [
            Text(
              userName,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black),
            ),
            Text(
              "Online",
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                ChatCircleProfile(index: index),
                Positioned(
                    left: 47,
                    top: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2)),
                      child: Icon(
                        Icons.circle,
                        size: 13,
                        color: Colors.green,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 241, 241, 241),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 228, 228, 228),
                    ),
                    child: Center(
                      child: Text("Hi Alan"),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 60,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(255, 228, 228, 228),
                    ),
                    child: Center(
                      child: Text(
                          "I am Jason, here to help you\nfind new friends"),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 160,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 228, 228, 228),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Select an interest to begin",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Column(
                          children: [
                            MsgContainer(
                              pColor: pColor,
                              msg: "Traveling the world",
                            ),
                            Divider(
                              height: 1,
                            ),
                            MsgContainer(
                              pColor: pColor,
                              msg: "Photography",
                            ),
                            Divider(
                              height: 1,
                            ),
                            MsgContainer(
                              pColor: pColor,
                              msg: "Watching Movie",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: pColor,
                      ),
                      child: Center(
                        child: Text(
                          "Photography",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, bottom: 20),
                  child: Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 228, 228, 228),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: const Color.fromARGB(255, 108, 108, 108),
                        ),
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: Color.fromARGB(255, 163, 163, 163),
                        ),
                        Icon(
                          Icons.circle,
                          size: 10,
                          color: Color.fromARGB(255, 201, 200, 200),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10,
                    ),
                    child: TextField(
                      cursorColor: pColor,
                      decoration: InputDecoration(
                        hintText: "Type message",
                        prefixIcon: Icon(
                          Icons.emoji_emotions_outlined,
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        suffixIcon: Transform.rotate(
                          angle: 100,
                          child: CircleAvatar(
                            backgroundColor: pColor,
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MsgContainer extends StatelessWidget {
  String msg;
  MsgContainer({super.key, required this.pColor, required this.msg});

  final Color pColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 40,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          msg,
          style: TextStyle(
            color: pColor,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
