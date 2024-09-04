import 'package:first_1/style_button.dart';
import 'package:first_1/style_text_body.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugar = 1;

  void incStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void incSugars() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          StyleTextBody('Strength: '),
          for (int s = 0; s < strength; s++)
            Image.asset(
              "assets/coffee_bean.png",
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
          Expanded(child: SizedBox()),
          StyleButton(child: Text('+'), onPressed: incStrength)
        ]),
        Row(
          children: [
            StyleTextBody('Sugars: '),
            if (sugar == 0) StyleTextBody('No sugar!'),
            for (int s = 0; s < sugar; s++)
              Image.asset(
                "assets/sugar_cube.jpg",
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(child: SizedBox()),
            StyleButton(child: Text('+'), onPressed: incSugars)
          ],
        )
      ],
    );
  }
}
