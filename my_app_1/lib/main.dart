import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/mainBack.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                '23 34Coffee so good, your taste buds will love it.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                  child: Row(
                children: [
                  Image.asset('assets/google_icon.png'),
                  Text('sdfsdf')
                ],
              )),
              Text(
                '45 23 34Coffee so good, your taste buds will love it.',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        )));
  }
}
