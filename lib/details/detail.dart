// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Details_Plant extends StatefulWidget {
  const Details_Plant({Key? key}) : super(key: key);

  @override
  State<Details_Plant> createState() => _Details_PlantState();
}

class _Details_PlantState extends State<Details_Plant> {
  @override
  void initState() {
    getSpecificInfo();
    super.initState();
  }

  String baseUrl = 'http://10.0.0.2:8000/index/1';

  Future<List> getSpecificInfo() async {
    try {
      var response = await http.get(Uri.parse(baseUrl));
      print(response.body);
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body);
      } else {
        return Future.error('Server error');
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('Tulip'),
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
