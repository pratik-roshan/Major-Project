import 'package:apothecary/menu/developers.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Menu'),),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 25),
          child: ListView(
            children: [
              ListTile(
                title: Text('Settings', style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold),),
                trailing:Icon(Icons.settings) ,
              ),
              ListTile(
                title: Text('Contact Us', style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold),),
                trailing:Icon(Icons.message),
              ),
              ListTile(
                title: Text('See Specialist', style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold),),
                trailing:Icon(Icons.medical_services) ,
              ),
              ListTile(
                onTap: () {
                  Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Developers()));
                },
                title: Text('Developers', style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold),),
                trailing:Icon(Icons.developer_mode) ,
              ),
            ],
          ),
        ),
    );
  }
}