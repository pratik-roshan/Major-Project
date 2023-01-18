// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePageMiddle extends StatefulWidget {
  const HomePageMiddle({Key? key}) : super(key: key);

  @override
  State<HomePageMiddle> createState() => _HomePageMiddleState();
}

class _HomePageMiddleState extends State<HomePageMiddle> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ListTile(
          leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
          title: Text('Rupesh Kumar Mandal'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
          title: Text('Rupesh Kumar Mandal'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
          title: Text('Rupesh Kumar Mandal'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
          title: Text('Rupesh Kumar Mandal'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
          title: Text('Rupesh Kumar Mandal'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
          title: Text('Rupesh Kumar Mandal'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
          title: Text('Rupesh Kumar Mandal'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
          title: Text('Rupesh Kumar Mandal'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
          title: Text('Rupesh Kumar Mandal'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),

        ListTile(
          leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
          title: Text('Rupesh Kumar Mandal'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/prashant.jpg')),
          title: Text('prashant shreshtha'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/pratik.jpg')),
          title: Text('Pratik Roshan Shah'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/sairam.jpg')),
          title: Text('Sairam sah'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
          title: Text('Rupesh Kumar Mandal'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/prashant.jpg')),
          title: Text('prashant shreshtha'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/pratik.jpg')),
          title: Text('Pratik Roshan Shah'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/sairam.jpg')),
          title: Text('Sairam sah'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
          title: Text('Rupesh Kumar Mandal'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/prashant.jpg')),
          title: Text('prashant shreshtha'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/pratik.jpg')),
          title: Text('Pratik Roshan Shah'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/sairam.jpg')),
          title: Text('Sairam sah'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
          title: Text('Rupesh Kumar Mandal'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/developers/prashant.jpg')),
          title: Text('prashant shreshtha'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.delete),
        ),
        SizedBox(
          height: 200,
          child: ListTile(
            leading: Image(image: AssetImage('images/developers/pratik.jpg')),
            title: Text('Pratik Roshan Shah'),
            subtitle: Text('click to preview'),
            trailing: Icon(Icons.delete),
          ),
        ),
        SizedBox(
          height: 200,
          child: ListTile(
            leading: CircleAvatar(
              radius: 100,
              backgroundImage:AssetImage('images/developers/rupesh.jpg')),
            title: Text('Sairam sah'),
            subtitle: Text('click to preview'),
            trailing: Icon(Icons.delete),
          ),
        ),
      ],
    );
  }
}
