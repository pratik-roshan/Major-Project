// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:apothecary/models/plants_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Details_Plant extends StatelessWidget {
  final Plants plant;
  const Details_Plant({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text(plant.name),
        backgroundColor: Colors.green,
        actions: const [Icon(Icons.add)],
      ),
      body: ListView(
        children: [
          Image(image: NetworkImage(plant.photo)),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                plant.name,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),

          // Container(
          //     padding: EdgeInsets.symmetric(horizontal: 32),
          //     child: Text('Has Anti-Septic Properties',
          //         style: TextStyle(
          //           fontSize: 20,
          //         ))),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              plant.sname,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),

          Container(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(plant.property,
                  style: TextStyle(
                    fontSize: 20,
                  ))),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              plant.location,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          )
          // Container(
          //     padding: EdgeInsets.symmetric(horizontal: 32),
          //     child: Text('Has Anti-Septic Properties',
          //         style: TextStyle(
          //           fontSize: 20,
          //         ))),
          // Container(
          //     padding: EdgeInsets.symmetric(horizontal: 32),
          //     child: Text('Remedy for Cough and Cold',
          //         style: TextStyle(
          //           fontSize: 20,
          //         ))),
          // Container(
          //     padding: EdgeInsets.symmetric(horizontal: 32),
          //     child: Text('Reduces Risk of Cancer',
          //         style: TextStyle(
          //           fontSize: 20,
          //         ))),
          // Container(
          //     padding: EdgeInsets.symmetric(horizontal: 32),
          //     child: Text('Used for Sinus Pain',
          //         style: TextStyle(
          //           fontSize: 20,
          //         ))),
          // Container(
          //     padding: EdgeInsets.symmetric(horizontal: 32),
          //     child: Text('It has diuretic properties',
          //         style: TextStyle(
          //           fontSize: 20,
          //         ))),
          // Container(
          //     padding: EdgeInsets.symmetric(horizontal: 32),
          //     child: Text('Can be also used for Cosmetics',
          //         style: TextStyle(
          //           fontSize: 20,
          //         ))),
        ],
      ),
    );
  }
}
