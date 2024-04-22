// ignore_for_file: prefer_const_constructors

import 'package:day1/day10%20HW/people_details.dart';
import 'package:day1/day10%20HW/people_list.dart';
import 'package:flutter/material.dart';

class Day10HW extends StatelessWidget {
  const Day10HW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List of people",
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: peopleList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PeopleDetails(
                              personAge: peopleList[index]['age'],
                              personBio: peopleList[index]['bio'],
                              personGender: peopleList[index]['gender'],
                              personImageUrl: peopleList[index]['image_url'],
                              personName: peopleList[index]['name'],
                            )));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                height: 80,
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  border: Border.all(),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(15)),
                          child: Container(
                            height: 80,
                            width: 80,
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                peopleList[index]['image_url'],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              peopleList[index]['name'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${peopleList[index]['age'].toString()} Years old",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      "Click to\nview details",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(
                      width: 1,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
