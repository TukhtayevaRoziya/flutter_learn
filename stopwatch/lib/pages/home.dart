import 'package:flutter/material.dart';
import 'dart:async';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color bgcolor = Color(0xFFF6F8FE);
  Color secondry = Color(0xFFECEFF9);
  Color highlight = Color(0xFFE7EBF7);

  List<dynamic> LapsList = [
    {'lap': 'LAP 1', 'time': '00:00:56'},
    {'lap': 'LAP 2', 'time': '00:03:37'},
    {'lap': 'LAP 3', 'time': '00:04:56'},
    {'lap': 'LAP 4', 'time': '00:09:37'},
    {'lap': 'LAP 5', 'time': '02:01:47'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      // appbar
      appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 25, top: 20),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 30,
            ),
          ),
          title: Center(
              child: Padding(
            padding: EdgeInsets.only(top: 15, right: 55, bottom: 5),
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: secondry, borderRadius: BorderRadius.circular(360)),
              child: Center(
                child: Text(
                  'StopWatch',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ))),

      // body
      body: Column(
        children: [
          //Timer
          Padding(
            padding: EdgeInsets.only(top: 110),
            child: Center(
                child: InkWell(
              child: Container(
                  height: 270,
                  width: 270,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(360),
                      boxShadow: List.filled(
                          10, BoxShadow(color: highlight, blurRadius: 30))),
                  child: Center(
                    child: Text(
                      // timeFormate(_elapsedTime),
                      '00:00:00',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontFamily: 'Redex'),
                    ),
                  )),
            )),
          ),

          // List - laps
          Container(
            width: double.infinity,
            height: 250,
            child: ListView.builder(
              itemCount: LapsList.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10, right: 10, top: 80),
              itemBuilder: (context, index) {
                final _lapsItem = LapsList[index];
                return Padding(
                  padding: EdgeInsets.only(top: 30, left: 10, right: 5),
                  child: Container(
                    height: 120,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10, right: 10),
                              child: Icon(
                                Icons.delete,
                                size: 20,
                                color: highlight,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Text(
                            _lapsItem['lap'],
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Redex',
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text(
                            _lapsItem['time'],
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontFamily: 'Ubuntu',
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    height: 60,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(360)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                        Text(
                          'START',
                          style: TextStyle(
                              color: Colors.grey.shade400, fontSize: 19),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Container(
                    height: 60,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(360)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.restart_alt,
                          color: Colors.white,
                          size: 35,
                        ),
                        Text(
                          'RESET',
                          style: TextStyle(
                              color: Colors.grey.shade400, fontSize: 19),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
