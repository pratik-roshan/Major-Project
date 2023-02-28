// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class Details_alovera extends StatefulWidget {
  const Details_alovera({Key? key}) : super(key: key);

  @override
  State<Details_alovera> createState() => _Details_aloveraState();
}

class _Details_aloveraState extends State<Details_alovera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('Aloe Vera'),
        backgroundColor: Colors.green,
        actions: const [Icon(Icons.add)],
      ),
      body: ListView(
        children: [
          Image(image: AssetImage('images/Plants/Aloe_vera.jpg')),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'Aloe Vera',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Ease systematic inflammation',
                  style: TextStyle(
                    fontSize: 20,
                  ))),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Relieves constipation ',
                  style: TextStyle(
                    fontSize: 20,
                  ))),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Stabilizes blood sugar ',
                  style: TextStyle(
                    fontSize: 20,
                  ))),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Improves skin condition',
                  style: TextStyle(
                    fontSize: 20,
                  ))),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Helps reduce acid reflux',
                  style: TextStyle(
                    fontSize: 20,
                  ))),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Lower high blood pressure',
                  style: TextStyle(
                    fontSize: 20,
                  ))),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Accelerates wound healing',
                  style: TextStyle(
                    fontSize: 20,
                  ))),
        ],
      ),
    );
  }
}
