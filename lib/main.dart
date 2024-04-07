// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:day1/calculator/caculator_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorPage(),
    );
  }
}


// Scaffold(
//         appBar: AppBar(
//           foregroundColor: Colors.white,
//           leading: Icon(
//             Icons.line_axis,
//           ),
//           backgroundColor: Colors.deepPurple,
//           title: Text(
//             "Hello There",
//             style: TextStyle(
//               fontSize: 25,
//             ),
//           ),
//           centerTitle: true,
//           actions: [
//             Icon(Icons.new_label),
//             Icon(Icons.duo),
//             Icon(Icons.duo),
//           ],
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("This is Body"),
//             Text("This is Body"),
//             Text("This is Body"),
//             Text("This is Body"),
//             Row(
//               children: [
//                 Icon(Icons.add),
//                 Icon(Icons.add),
//                 Icon(Icons.add),
//                 Icon(Icons.add),
//               ],
//             )
//           ],
//         ),
//       ),