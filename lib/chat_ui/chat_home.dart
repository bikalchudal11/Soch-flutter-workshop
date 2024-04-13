// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:day1/chat_ui/chat_circle_profile.dart';
import 'package:day1/chat_ui/chat_inbox.dart';
import 'package:day1/chat_ui/chat_list_tile.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatHome extends StatelessWidget {
  const ChatHome({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    Color pColor = Color.fromARGB(255, 7, 79, 203);
    Color sColor = Colors.grey;
    return Scaffold(
      backgroundColor: pColor,
      appBar: AppBar(
        backgroundColor: pColor,
        foregroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            "Chats",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 241, 241, 241),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: Container(
              height: media.height * 0.22,
              width: media.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          DottedBorder(
                            borderType: BorderType.Circle,
                            dashPattern: const [8, 7],
                            strokeWidth: 2,
                            color: Colors.black,
                            radius: Radius.circular(20),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Icon(
                                Icons.add,
                                size: 25,
                                color: pColor,
                              ),
                            ),
                          ),
                          ChatCircleProfile(
                            index: 3,
                          ),
                          ChatCircleProfile(
                            index: 4,
                          ),
                          ChatCircleProfile(
                            index: 9,
                          ),
                          ChatCircleProfile(
                            index: 10,
                          ),
                          ChatCircleProfile(
                            index: 199,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          RowText(pColor: pColor, name: "All"),
                          RowText(pColor: sColor, name: "Family"),
                          RowText(pColor: sColor, name: "Buddies"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
                color: Color.fromARGB(255, 241, 241, 241),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ChatInbox(
                                      userName: "Azar Hosseini",
                                      index: 3,
                                    )));
                      },
                      child: ChatListTile(
                        title: "Azar Hosseini",
                        subtitle: "Evelyn Allen",
                        index: 3,
                      ),
                    ),
                    ChatListTile(
                      title: "Phet Putrie",
                      subtitle: "Thitiwat Shimma",
                      index: 5,
                    ),
                    ChatListTile(
                      title: "Klay Totleben",
                      subtitle: "Prescott MacCaffery",
                      index: 1,
                    ),
                    ChatListTile(
                      title: "Brijamohan Mallick",
                      subtitle: "Anne-Marije Markink",
                      index: 30,
                    ),
                    ChatListTile(
                      title: "Miriam de Jes'us",
                      subtitle: "Alf Huncoot",
                      index: 32,
                    ),
                    ChatListTile(
                      title: "Yahiro Ayuko",
                      subtitle: "Indu charkarvarti",
                      index: 63,
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class RowText extends StatelessWidget {
  RowText({
    super.key,
    required this.pColor,
    required this.name,
  });

  final Color pColor;
  String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 18,
          color: pColor,
        ),
      ),
    );
  }
}
