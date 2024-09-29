// import 'dart:math';

import 'package:flutter/material.dart';

class MyContain extends StatelessWidget {
  const MyContain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'MY TITLE',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Container(
            width: 200,
            height: 200,
            transform: Matrix4.skewY(100),
            decoration: BoxDecoration(
              color: Colors.blue,
              // borderRadius: BorderRadius.circular(12),
              border: Border.all(
                  color: Colors.red,
                  strokeAlign: BorderSide.strokeAlignInside,
                  width: 13),
              // image: DecorationImage(
              //     image: NetworkImage(
              //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXJA32WU4rBpx7maglqeEtt3ot1tPIRWptxA&s')),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    blurRadius: 30,
                    color: Colors.red,
                    // spread where dx, dy
                    offset: Offset(0, 0),
                    // boxni nechi sm dan keyin box shadow ishlasin
                    // spreadRadius: 1,
                    // spread which inner outer
                    blurStyle: BlurStyle.outer)
              ],
              gradient: LinearGradient(
                  // begin: Alignment.topRight,
                  // end: Alignment.bottomLeft,
                  colors: [
                    Colors.orange,
                    Colors.black,
                    Colors.orange,
                    Colors.black,
                    Colors.orange,
                  ]),
            ),
          ),
        ));
  }
}
