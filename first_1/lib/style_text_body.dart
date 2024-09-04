import 'package:flutter/material.dart';

class StyleTextBody extends StatelessWidget {
  const StyleTextBody(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.brown[900],
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
