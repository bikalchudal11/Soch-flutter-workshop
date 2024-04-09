// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GallaryPage extends StatefulWidget {
  const GallaryPage({super.key});

  @override
  State<GallaryPage> createState() => _GallaryPageState();
}

class _GallaryPageState extends State<GallaryPage> {
  @override
  // ignore: override_on_non_overriding_member
  String imgUrl = "https://picsum.photos/200/300?random=";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gallary App",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.search_rounded,
              size: 25,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            ReuseableRow(imgUrl: imgUrl + "1"),
            SizedBox(height: 10),
            ReuseableRow(imgUrl: imgUrl + "2"),
            SizedBox(height: 10),
            ReuseableRow(imgUrl: imgUrl + "3"),
            SizedBox(height: 10),
            ReuseableRow(imgUrl: imgUrl + "4"),
            SizedBox(height: 10),
            ReuseableRow(imgUrl: imgUrl + "5"),
            SizedBox(height: 10),
            ReuseableRow(imgUrl: imgUrl + "6"),
          ],
        ),
      ),
    );
  }
}

class ReuseableRow extends StatelessWidget {
  String imgUrl;
  ReuseableRow({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image(
          width: 120,
          fit: BoxFit.cover,
          image: NetworkImage(imgUrl),
        ),
        Image(
          width: 120,
          fit: BoxFit.cover,
          image: NetworkImage(imgUrl + "1"),
        ),
        Image(
          width: 120,
          fit: BoxFit.cover,
          image: NetworkImage(imgUrl + "2"),
        ),
      ],
    );
  }
}
