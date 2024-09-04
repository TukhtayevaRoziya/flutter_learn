import 'package:first_1/coffee_prefs.dart';
import 'package:first_1/style_text_body.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '23 ROzi My Title',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.brown[800],
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.brown[200],
              padding: EdgeInsets.all(20),
              child: StyleTextBody(
                'I like Coffee...',
              ),
            ),
            Container(
              color: Colors.brown[100],
              padding: EdgeInsets.all(20),
              child: const CoffeePrefs(),
            ),
            Expanded(
                child: Image.asset(
              'assets/coffee_bg.jpg',
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ))
          ],
        ));
  }
}
