import 'package:flutter/material.dart';
import 'package:my_app_1/utils/toDo_list.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
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

  void saveNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
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
            }),
        floatingActionButton: Row(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 40, right: 20),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                    hintText: 'Add more items...',
                    filled: true,
                    fillColor: Colors.deepPurple.shade200,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.deepPurple),
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
            )),
            FloatingActionButton(
                onPressed: saveNewTask, child: const Icon(Icons.add)),
          ],
        ));

    // )
  }
}
