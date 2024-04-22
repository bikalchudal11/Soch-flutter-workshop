// ignore_for_file: prefer_const_constructors

import 'package:day1/day10Desc.dart';
import 'package:day1/posts_string.dart';
import 'package:flutter/material.dart';

class Day10 extends StatefulWidget {
  const Day10({super.key});

  @override
  State<Day10> createState() => _Day10State();
}

List<String> fruits = [
  "Mango",
  "Orange",
  "Banana",
  "Pineapple",
  "Mango",
  "Orange",
  "Banana",
  "Pineapple",
  "Mango",
  "Orange",
  "Banana",
  "Pineapple",
];

class _Day10State extends State<Day10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
          title: Text("Day 10"),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  fruits[index] = '${fruits[index]}o';
                  setState(() {});
                },
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Day10Desc(
                                        title: posts[index]['title'],
                                        body: posts[index]['body'],
                                      )));
                        },
                        leading: Text(
                          posts[index]['id'].toString(),
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        title: Text(
                          posts[index]['title'],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )),
              );
            }));
  }
}
