import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  final String data;

  HomePage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
            color: Color(0xff242424),
            padding: EdgeInsets.only(left: 30, right: 30),
            height: 270,
            width: MediaQuery.of(context).size.width * 1,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Bilzen,Tanjungbalai',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),

                    // ),
                  ],
                ),
                Expanded(
                    child: Image.asset(
                  'assets/profilePic.png',
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomCenter,
                  width: 70,
                  height: 60,
                ))
              ]),
              Column(
                children: [
                  TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration(
                        //  border: InputBorder(borderSide: BorderSide(width: 15, C)),
                        hintText: 'Search coffee',
                        fillColor: Colors.white),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Search coffee';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ])),
        Expanded(
            child: Image.asset(
          'assets/home_1.png',
          fit: BoxFit.contain,
          alignment: Alignment.bottomCenter,
          width: 70,
          height: 60,
        )),
        Text('sdfsd')
      ]),
    ));
  }
}
