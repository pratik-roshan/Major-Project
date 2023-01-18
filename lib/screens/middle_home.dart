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
          leading: Image(image: AssetImage('images/Plants/Aloe_vera.jpg')),
          title: Text('Aloe Vera'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/Plants/ashwagandha.png')),
          title: Text('Ashwagandha'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/Plants/calendula.jpg')),
          title: Text('Calendula'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: Image(
              image: AssetImage('images/Plants/lavender-flower-seeds.jpg')),
          title: Text('Lavender'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: Image(
              image: AssetImage('images/Plants/methi-kasturi-fenugreek.jpg')),
          title: Text('Fenugreek'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/Plants/Neem.webp')),
          title: Text('Neem'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: Image(image: AssetImage('images/Plants/rosemary.jpg')),
          title: Text('Rosemary'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: Image(
              image: AssetImage(
                  'images/Plants/thyme-thymus-vulgaris-herb-seeds.jpg')),
          title: Text('Thyme'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading:
              Image(image: AssetImage('images/Plants/Tulasi_Holy_basil.jpg')),
          title: Text('Tulasi'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: Image(
              image: AssetImage(
                  'images/Plants/weed-marijuana-polling-tobacco.jpg')),
          title: Text('Weed'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        // ListTile(
        //   leading: Image(image: AssetImage('images/developers/prashant.jpg')),
        //   title: Text('prashant shreshtha'),
        //   subtitle: Text('click to preview'),
        //   trailing: Icon(Icons.info),
        // ),
        // ListTile(
        //   leading: Image(image: AssetImage('images/developers/pratik.jpg')),
        //   title: Text('Pratik Roshan Shah'),
        //   subtitle: Text('click to preview'),
        //   trailing: Icon(Icons.info),
        // ),
        // ListTile(
        //   leading: Image(image: AssetImage('images/developers/sairam.jpg')),
        //   title: Text('Sairam sah'),
        //   subtitle: Text('click to preview'),
        //   trailing: Icon(Icons.info),
        // ),
        // ListTile(
        //   leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
        //   title: Text('Rupesh Kumar Mandal'),
        //   subtitle: Text('click to preview'),
        //   trailing: Icon(Icons.info),
        // ),
        // ListTile(
        //   leading: Image(image: AssetImage('images/developers/prashant.jpg')),
        //   title: Text('prashant shreshtha'),
        //   subtitle: Text('click to preview'),
        //   trailing: Icon(Icons.info),
        // ),
        // ListTile(
        //   leading: Image(image: AssetImage('images/developers/pratik.jpg')),
        //   title: Text('Pratik Roshan Shah'),
        //   subtitle: Text('click to preview'),
        //   trailing: Icon(Icons.info),
        // ),
        // ListTile(
        //   leading: Image(image: AssetImage('images/developers/sairam.jpg')),
        //   title: Text('Sairam sah'),
        //   subtitle: Text('click to preview'),
        //   trailing: Icon(Icons.info),
        // ),
        // ListTile(
        //   leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
        //   title: Text('Rupesh Kumar Mandal'),
        //   subtitle: Text('click to preview'),
        //   trailing: Icon(Icons.info),
        // ),
        // ListTile(
        //   leading: Image(image: AssetImage('images/developers/prashant.jpg')),
        //   title: Text('prashant shreshtha'),
        //   subtitle: Text('click to preview'),
        //   trailing: Icon(Icons.info),
        // ),
        // ListTile(
        //   leading: Image(image: AssetImage('images/developers/pratik.jpg')),
        //   title: Text('Pratik Roshan Shah'),
        //   subtitle: Text('click to preview'),
        //   trailing: Icon(Icons.info),
        // ),
        // ListTile(
        //   leading: Image(image: AssetImage('images/developers/sairam.jpg')),
        //   title: Text('Sairam sah'),
        //   subtitle: Text('click to preview'),
        //   trailing: Icon(Icons.info),
        // ),
        // ListTile(
        //   leading: Image(image: AssetImage('images/developers/rupesh.jpg')),
        //   title: Text('Rupesh Kumar Mandal'),
        //   subtitle: Text('click to preview'),
        //   trailing: Icon(Icons.info),
        // ),
        // ListTile(
        //   leading: Image(image: AssetImage('images/developers/prashant.jpg')),
        //   title: Text('prashant shreshtha'),
        //   subtitle: Text('click to preview'),
        //   trailing: Icon(Icons.info),
        // ),
        // SizedBox(
        //   height: 200,
        //   child: ListTile(
        //     leading: Image(image: AssetImage('images/developers/pratik.jpg')),
        //     title: Text('Pratik Roshan Shah'),
        //     subtitle: Text('click to preview'),
        //     trailing: Icon(Icons.info),
        //   ),
        // ),
      ],
    );
  }
}
