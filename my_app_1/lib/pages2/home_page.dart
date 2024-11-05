import 'package:flutter/material.dart';
import 'package:my_app_1/utils/toDo_list.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ['Learn Flutter', false],
    ['Drink Coffee', true],
    ['Eat Well', false],
    ['Stay happy', false],
    ['Do not be sad', false],
  ];

  void checkboxChanged(int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade300,
        appBar: AppBar(
          title: const Center(child: Text('Simple To Do list')),
          backgroundColor: Colors.deepPurple,
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (BuildContext context, index) {
              return TodoList(
                taskName: toDoList[index][0],
                taskCompleted: toDoList[index][1],
                onChanged: (value) => checkboxChanged(index),
              );
            }));
  }
}
