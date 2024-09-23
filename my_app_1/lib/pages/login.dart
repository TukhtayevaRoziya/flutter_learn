import 'package:flutter/material.dart';
import 'package:my_app_1/pages/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                color: Colors.white, fontSize: 42, fontWeight: FontWeight.bold),
          ),
          Text(
            'The best grain, the finest roast, the powerful flavor..',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xffA9A9A9), fontSize: 24),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HomePage()),
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/google_icon.png'),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Continue with Google',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff757575),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(top: 15, bottom: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          )
        ]),
      ),
    ));
  }
}
