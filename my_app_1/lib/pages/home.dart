import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String data;

  HomePage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Back to First Screen'),
          ),
        ],
      ),
    ));
  }
}
