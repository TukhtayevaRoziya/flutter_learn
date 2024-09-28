import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // for header
      appBar: AppBar(
        backgroundColor: Colors.grey,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Recipe Calculate',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),

      // for body
      body: Container(
          color: Colors.red,
          height: 800,
          child: Image.network(
              'https://www.eatingwell.com/thmb/zvHrm_Z8F2qLeJenpJ6lYodtq7M=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/57831531-73819d8ce8f5413cac42cf1c907bc37a.jpg')),

      // for hullas site ni chekasidagi btn which tepaga chiqarvoradigan nomi esimdan chiqdi:)
      floatingActionButton: FloatingActionButton(onPressed: () {}),

      // bu ozimi projectimdagi navbar pastda turadigan
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.add_alarm), label: 'Alarm'),
      ]),
      // bu yon boshdagi drawer antd/mui lada ham bor
      drawer: Drawer(),
      // bu ong yon boshdagi drawer antd/mui lada ham bor

      endDrawer: Drawer(),
    );
  }
}
