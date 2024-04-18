// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScoreUI extends StatelessWidget {
  ScoreUI({super.key});

  Color primaryColor = const Color.fromARGB(255, 132, 78, 225);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: primaryColor,
            ),
            child: TopStack(
              primaryColor: primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 31,
            ),
          ),
          Positioned(
              right: 270,
              bottom: 630,
              child: Icon(
                Icons.circle,
                color: Colors.white.withOpacity(0.08),
                size: 200,
              )),
          Positioned(
              bottom: 720,
              right: 90,
              child: Icon(
                Icons.circle,
                color: Colors.white.withOpacity(0.08),
                size: 200,
              )),
          Positioned(
              bottom: 720,
              right: 70,
              child: Icon(
                Icons.circle,
                color: Colors.white.withOpacity(0.08),
                size: 50,
              )),
          Positioned(
              top: 90,
              left: 300,
              child: Icon(
                Icons.circle,
                color: Colors.white.withOpacity(0.08),
                size: 250,
              )),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: primaryColor.withOpacity(0.5),
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReuseableContainer(
                          titleColor: primaryColor,
                          title: '100%',
                          subtitle: 'Completed',
                        ),
                        ReuseableContainer(
                          titleColor: primaryColor,
                          title: '20',
                          subtitle: 'New Question',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReuseableContainer(
                          titleColor: Colors.green,
                          title: '13',
                          subtitle: 'Correct',
                        ),
                        ReuseableContainer(
                          titleColor: Colors.red,
                          title: '07',
                          subtitle: 'Wrong',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        bottomIconColumn(
                          containerColor: Colors.teal,
                          title: "Play Again",
                          icon: Icon(
                            Icons.replay_outlined,
                            color: Colors.white,
                          ),
                        ),
                        bottomIconColumn(
                          containerColor: Colors.orange,
                          title: "Review Answer",
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.white,
                          ),
                        ),
                        bottomIconColumn(
                          containerColor: Color.fromARGB(255, 13, 49, 225),
                          title: "Share Score",
                          icon: Icon(
                            Icons.share,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        bottomIconColumn(
                          containerColor: Colors.blue,
                          title: "Generate Pdf",
                          icon: Icon(
                            Icons.file_copy,
                            color: Colors.white,
                          ),
                        ),
                        bottomIconColumn(
                          containerColor: Colors.purple,
                          icon: Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                          ),
                          title: "Home",
                        ),
                        bottomIconColumn(
                          containerColor: Colors.grey,
                          title: "LeaderBoard",
                          icon: Icon(
                            Icons.leaderboard_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class bottomIconColumn extends StatelessWidget {
  Icon icon;
  Color containerColor;

  String title;
  bottomIconColumn({
    super.key,
    required this.containerColor,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: containerColor,
          ),
          child: icon,
        ),
        SizedBox(
          height: 5,
        ),
        Text(title)
      ],
    );
  }
}

class ReuseableContainer extends StatelessWidget {
  String title, subtitle;
  Color titleColor;
  ReuseableContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .3,
      height: MediaQuery.of(context).size.height * .06,
      decoration: BoxDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Icon(
              Icons.circle,
              color: titleColor,
              size: 10,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    color: titleColor,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 13),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TopStack extends StatelessWidget {
  const TopStack({
    super.key,
    required this.primaryColor,
  });

  final Color primaryColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Icon(
          Icons.circle,
          color: Colors.white.withOpacity(0.3),
          size: 250,
        ),
        Icon(
          Icons.circle,
          color: Colors.white.withOpacity(0.4),
          size: 180,
        ),
        Icon(
          Icons.circle,
          color: Colors.white,
          size: 150,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Score",
              style: TextStyle(
                color: primaryColor,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "150",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 35,
                    color: primaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "pt",
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
