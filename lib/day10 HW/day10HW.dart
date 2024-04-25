// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, file_names

import 'package:day1/day10%20HW/people_details.dart';
import 'package:day1/day10%20HW/people_list.dart';
import 'package:flutter/material.dart';

class Day10HW extends StatefulWidget {
  const Day10HW({super.key});

  @override
  State<Day10HW> createState() => _Day10HWState();
}

class _Day10HWState extends State<Day10HW> {
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
            itemCount: peopleList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PeopleDetails(
                                onAgeChange: (updatedAge) {
                                  peopleList[index]['age'] = updatedAge;
                                  setState(() {});
                                },
                                onGenderChange: (changeVakoGender) {
                                  peopleList[index]['gender'] =
                                      changeVakoGender;
                                  setState(() {});
                                },
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
                    border: Border.all(
                      color: peopleList[index]['gender'] == 'male'
                          ? Colors.blue
                          : Colors.pink,
                    ),
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
      ),
    );
  }
}
