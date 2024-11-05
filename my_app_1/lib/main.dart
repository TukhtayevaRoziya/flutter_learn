import 'package:flutter/material.dart';
import 'package:my_app_1/pages2/home_page.dart';
// import 'package:my_app_1/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // title: 'Bottom Navigation Bar Example',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: const Scaffold(
      //     body: Image(
      //   image: NetworkImage(
      //       'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
      // ))
    );
  }
}
