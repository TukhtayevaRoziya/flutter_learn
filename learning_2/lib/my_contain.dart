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
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: Colors.red,
                    strokeAlign: BorderSide.strokeAlignInside,
                    width: 13),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXJA32WU4rBpx7maglqeEtt3ot1tPIRWptxA&s'))),
          ),
        ));
  }
}
