// ignore_for_file: prefer_const_constructors

import 'package:day1/chat_ui/chat_circle_profile.dart';
import 'package:flutter/material.dart';

class ChatListTile extends StatelessWidget {
  String title, subtitle;
  int index;
  ChatListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    Color pColor = Color.fromARGB(255, 7, 79, 203);
    Color sColor = Colors.grey;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: ChatCircleProfile(
          index: index,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: sColor,
          ),
        ),
      ),
    );
  }
}
