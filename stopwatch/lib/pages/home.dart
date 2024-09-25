import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bgcolor = Color(0xFFF6F8FE);
  Color secondary = Color(0xFFECEFF9);
  Color highlight = Color(0xFFE7EBF7);

  List<dynamic> LapsList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F8FE),
      appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 25, top: 15),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 30,
            ),
          ),
          title: Center(
              child: Padding(
            padding: EdgeInsets.only(top: 15, right: 55, bottom: 5),
            child: Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                  color: Color(0xFFECEFF9),
                  borderRadius: BorderRadius.circular(360)),
              child: Center(
                  child: Text(
                'Stopwatch',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              )),
            ),
          ))),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.only(top: 80),
              child: Center(
                  child: Container(
                height: 250,
                width: 250,
                child: Center(
                    child: Text(
                  '00:00:00',
                  style: TextStyle(color: Colors.black, fontSize: 40),
                )),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(360),
                    boxShadow: List.filled(10,
                        BoxShadow(color: Color(0xFFE7EBF7), blurRadius: 20))),
              ))),
          ListView.builder(
            itemCount: LapsList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(top: 30, left: 10, bottom: 5),
                child: Container(
                  height: 120,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
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
                              color: Color(0xFFE7EBF7),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 15),
                        child: Text(
                          'LAB 1',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10, left: 15),
                        child: Text(
                          '00:05:32',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
