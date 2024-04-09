// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 3"),
        centerTitle: true,
        actions: [
          Icon(Icons.add),
          Icon(Icons.create),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Data",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Image(
                image: NetworkImage(
                    "https://scontent.fktm7-1.fna.fbcdn.net/v/t39.30808-1/433283214_1412498369406062_3104046689252113850_n.jpg?stp=c4.18.84.85a_cp0_dst-jpg_p100x100&_nc_cat=100&ccb=1-7&_nc_sid=5f2048&_nc_ohc=sdMXYRZgDioAb6pmxG5&_nc_ht=scontent.fktm7-1.fna&oh=00_AfBYauTk9OwQwbsvu-npTonCTCwgnbQxX6kAWwUcylVnYw&oe=6619430D"))
          ],
        ),
      ),
    );
  }
}
