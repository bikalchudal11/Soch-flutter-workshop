// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class PeopleDetails extends StatelessWidget {
  String personName, personImageUrl, personBio, personGender;
  int personAge;
  PeopleDetails(
      {super.key,
      required this.personGender,
      required this.personAge,
      required this.personBio,
      required this.personImageUrl,
      required this.personName});

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
              border: Border.all(width: 2),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(personImageUrl),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            personName,
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
              personBio,
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
                Text(
                  '${personAge.toString()} Years old',
                ),
                Text(
                  personGender.toString(),
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
