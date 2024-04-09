// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Day4 extends StatelessWidget {
  const Day4({super.key});

  @override
  Widget build(BuildContext context) {
    String imgUrl = "https://picsum.photos/200/300?random=1";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: Text(
          "Day 4",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row(
            //   children: [
            //     Container(
            //       height: 120,
            //       width: 120,
            //       decoration: BoxDecoration(
            //           image: DecorationImage(
            //         fit: BoxFit.cover,
            //         image: NetworkImage(imgUrl),
            //       )),
            //     ),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Container(
            //       height: 120,
            //       width: 120,
            //       decoration: BoxDecoration(
            //           image: DecorationImage(
            //         fit: BoxFit.cover,
            //         image: NetworkImage(imgUrl),
            //       )),
            //     ),
            //   ],
            // ),
            Stack(
              children: [
                Center(
                  child: Container(
                    height: 80,
                    width: 320,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                        border: Border(
                            top: BorderSide(
                          color: Colors.amber,
                          width: 5,
                        ))),
                  ),
                ),
                Center(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlutterLogo(
                      size: 90,
                    ),
                    Text(
                      "Go Flutter",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       Text("Home"),
      //       Text("About"),
      //       Text("Search"),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: SizedBox(),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.abc),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.abc),
          ),
        ],
      ),
    );
  }
}
