// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:apothecary/screens/account_screens.dart';
import 'package:apothecary/screens/drawer_screen.dart';
import 'package:apothecary/screens/hot_topic.dart';
import 'package:apothecary/screens/middle_home.dart';
import 'package:apothecary/screens/qr_scanner.dart';
import 'package:apothecary/screens/scan_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'account_screens.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 2;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationBar = GlobalKey();
  List<Widget> meroWidget = <Widget>[
    HotTopics(),
    ImageScanner(),
    HomePageMiddle(),
    TextScanner(),
    MyAccount(),
  ];
  // _onItemTap(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Apothecary'),
        centerTitle: false,
      ),
      endDrawer: Drawer(
        width: MediaQuery.of(context).size.width * 1,
        child: MyDrawer(),
      ),

      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationBar,
        index: 2,
        backgroundColor: Colors.greenAccent,
        color: Colors.green,
        items: [
          Icon(
            Icons.favorite,
            size: 30,
          ),
          Icon(
            Icons.qr_code_scanner,
            size: 30,
          ),
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.person_outline, size: 30)
        ],
        letIndexChange: (index) => true,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   // fixedColor: Colors.green,
      //   backgroundColor: Colors.green,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(backgroundColor: Colors.green,
      //         icon: Icon(Icons.favorite_outline, size: 25,),
      //         label: 'Hot Topic',),
      //     BottomNavigationBarItem(backgroundColor: Colors.green,
      //         icon: Icon(Icons.qr_code_scanner_sharp),
      //         label: 'Scan To Search',),
      //     BottomNavigationBarItem(backgroundColor: Colors.green,
      //         icon: Icon(Icons.home),
      //         label: 'Home',),
      //     BottomNavigationBarItem(backgroundColor: Colors.green,
      //         icon: Icon(Icons.search),
      //         label: 'Search',),
      //     BottomNavigationBarItem(backgroundColor: Colors.green,
      //         icon: Icon(Icons.person_outlined),
      //         label: 'Account',),
      //   ],
      //   currentIndex: _selectedIndex,
      //   onTap: _onItemTap,
      // ),
      body: Center(child: meroWidget.elementAt(_selectedIndex)),
    );
  }
}
