// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, collection_methods_unrelated_type

import 'package:flutter/material.dart';

class Day13Hw extends StatefulWidget {
  const Day13Hw({super.key});

  @override
  State<Day13Hw> createState() => _Day13HwState();
}

List<String> toDoList = [];

TextEditingController toDoController = TextEditingController();

class _Day13HwState extends State<Day13Hw> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo List"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        tooltip: 'Add ToDo',
        onPressed: () {
          _showDialog(context);
        },
        child: Icon(Icons.add),
      ),
      body: toDoList.isEmpty
          ? Center(child: Image(image: AssetImage('assets/images/day13.jpg')))
          : ListView.builder(
              itemCount: toDoList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5,
                  ),
                  child: Card(
                    child: ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      leading: Text(
                        (index + 1).toString(),
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      title: Text(
                        toDoList[index],
                        style: TextStyle(
                          decoration: isChecked
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      trailing: Container(
                        height: 50,
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                isChecked = value!;
                                setState(() {});
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                _showDialogDelete(context, index);
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }

  Future<dynamic> _showDialogDelete(BuildContext context, int index) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Align(
              alignment: Alignment.center,
              child: Text(
                "Do you want to delete?",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                      Colors.deepPurple,
                    )),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "No",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                      Colors.deepPurple,
                    )),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.red,
                          content: Text("ToDo Removed!")));
                      setState(() {
                        toDoList.removeAt(index);
                      });
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Yes",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  }

  Future<dynamic> _showDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Align(
              alignment: Alignment.center,
              child: Text(
                "Add ToDo",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            content: Container(
              height: 100,
              width: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 213, 207, 207),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: toDoController,
                  decoration: InputDecoration(
                    hintText: 'Write ToDo here',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            actions: [
              TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                  Colors.deepPurple,
                )),
                onPressed: () {
                  if (toDoController.text == "") {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.red,
                        content: Text("Empty ToDo cannot be added!")));
                  } else {
                    setState(() {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.green,
                          content: Text("ToDo added!")));
                      toDoList.add(toDoController.text);
                      toDoController.clear();
                    });
                    Navigator.pop(context);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Save",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
