import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _currentIndex,
          selectedItemColor: Colors.blue,
          onTap: onTappedBar,
        ),
        body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
                color: Color(0xff242424),
                padding: EdgeInsets.only(left: 30, right: 30),
                height: 270,
                width: MediaQuery.of(context).size.width * 1,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Bilzen,Tanjungbalai',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),

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

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Screen'));
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Search Screen'));
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Screen'));
  }
}
