import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List toDoList = [
    ['Learn Flutter', false],
    ['Drink Coffee', false],
    ['Eat Well', false],
    ['Stay happy', false],
  ];

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
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(15)),
                  child: Text(
                    toDoList[index][0],
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              );
            }));
  }
}
