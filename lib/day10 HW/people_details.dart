// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:day1/day10%20HW/people_list.dart';
import 'package:flutter/material.dart';

class PeopleDetails extends StatefulWidget {
  Function(String) onGenderChange;
  Function(int) onAgeChange;
  String personName, personImageUrl, personBio, personGender;
  int personAge;
  PeopleDetails(
      {super.key,
      required this.onAgeChange,
      required this.personGender,
      required this.personAge,
      required this.personBio,
      required this.onGenderChange,
      required this.personImageUrl,
      required this.personName});

  @override
  State<PeopleDetails> createState() => _PeopleDetailsState();
}

class _PeopleDetailsState extends State<PeopleDetails> {
  genderCheck(value) {
    if (widget.personGender == "male") {
      return "female";
    } else {
      return 'male';
    }
  }

  bool isSwitchOn = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color:
                    widget.personGender == 'male' ? Colors.blue : Colors.pink,
              ),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(widget.personImageUrl),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            widget.personName,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              textAlign: TextAlign.center,
              widget.personBio,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '${widget.personAge.toString()} Years old',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Row(children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            widget.personAge--;
                          });
                          widget.onAgeChange(widget.personAge);
                        },
                        child: Icon(Icons.remove),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {
                            setState(() {
                              widget.personAge++;
                            });
                            widget.onAgeChange(widget.personAge);
                          },
                          child: Icon(Icons.add)),
                    ])
                  ],
                ),
                Row(
                  children: [
                    Switch(
                      value: isSwitchOn,
                      onChanged: (value) {
                        widget.onGenderChange(!isSwitchOn
                            ? genderCheck(isSwitchOn)
                            : widget.personGender.toString());
                        isSwitchOn = value;

                        setState(() {});
                      },
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      isSwitchOn
                          ? genderCheck(isSwitchOn)
                          : widget.personGender.toString(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
