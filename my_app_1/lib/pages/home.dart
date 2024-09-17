import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Breakfast',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.all(10),
          child: Text('Hi'),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/mainback.png"),
              fit: BoxFit.cover,
            ),
            color: Color(0xfff7f8f8),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/mainBack.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Text('Hi')),
    );
  }
}
