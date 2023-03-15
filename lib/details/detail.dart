// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class Details_tulip extends StatefulWidget {
  const Details_tulip({Key? key}) : super(key: key);

  @override
  State<Details_tulip> createState() => _Details_tulipState();
}

class _Details_tulipState extends State<Details_tulip> {
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
          Image(image: AssetImage('assets/images/Plants/tulip.jpg')),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'Tulip',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Scientific Name: Tulipa',
                  style: TextStyle(
                    fontSize: 20,
                  ))),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Has Anti-Septic Properties',
                  style: TextStyle(
                    fontSize: 20,
                  ))),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Remedy for Cough and Cold',
                  style: TextStyle(
                    fontSize: 20,
                  ))),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Reduces Risk of Cancer',
                  style: TextStyle(
                    fontSize: 20,
                  ))),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Used for Sinus Pain',
                  style: TextStyle(
                    fontSize: 20,
                  ))),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('It has diuretic properties',
                  style: TextStyle(
                    fontSize: 20,
                  ))),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text('Can be also used for Cosmetics',
                  style: TextStyle(
                    fontSize: 20,
                  ))),
        ],
      ),
    );
  }
}
