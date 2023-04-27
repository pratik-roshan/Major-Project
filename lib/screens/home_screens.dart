// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:apothecary/screens/account_screens.dart';
import 'package:apothecary/screens/drawer_screen.dart';
// import 'package:apothecary/screens/hot_topic.dart';
import 'package:apothecary/screens/middle_home.dart';
import 'package:apothecary/screens/qr_scanner.dart';
import 'package:apothecary/screens/scan_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'account_screens.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationBar = GlobalKey();
  List<Widget> meroWidget = <Widget>[
    HomePageMiddle(),
    // HotTopics(),
    ImageScanner(),
    // TfliteModel(),
    SearchScreen(),
    MyAccount(),
  ];

  Future<bool> _onWillPop() async {
    if (_selectedIndex == 0) {
      await SystemNavigator.pop();
    }

    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        _selectedIndex = 0;
      });
    });
    return _bottomNavigationBar.currentState == 0;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
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
          index: _selectedIndex,
          backgroundColor: Colors.greenAccent,
          color: Colors.green,
          items: [
            Icon(
              Icons.home,
              size: 30,
            ),
            Icon(
              Icons.qr_code_scanner,
              size: 30,
            ),
            // Icon(Icons.home, size: 30),
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
        body: Center(child: meroWidget.elementAt(_selectedIndex)),
      ),
    );
  }
}
