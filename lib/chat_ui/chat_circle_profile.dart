// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChatCircleProfile extends StatelessWidget {
  int index;
  ChatCircleProfile({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    Color pColor = Color.fromARGB(255, 7, 79, 203);
    Color sColor = Colors.grey;
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: CircleAvatar(
        backgroundImage:
            NetworkImage('https://picsum.photos/200/300?random=$index'),
        radius: 30,
      ),
    );
  }
}
