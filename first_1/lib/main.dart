import 'package:first_1/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Home()));
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Title"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            color: Colors.red,
            child: Text('Red'),
          ),
          Container(
            width: 200,
            color: Colors.green,
            child: Text('Green'),
          ),
          Container(
            width: 300,
            color: Colors.blue,
            child: Text('Blue'),
          ),
        ],
      ),
    );
  }
}
