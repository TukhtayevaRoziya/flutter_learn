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
            padding: const EdgeInsets.all(15),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                'Coffee so good, your taste buds will love it.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'The best grain, the finest roast, the powerful flavor..',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xffA9A9A9), fontSize: 24),
              ),
              Container(
                child: Row(
                  children: [
                    Image.asset('assets/google_icon.png'),
                    Text(
                      '23sdfsdf',
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
                color: Colors.white,
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.only(top: 15, bottom: 15),
              ),
            ]),
          ),
        )));
  }
}
