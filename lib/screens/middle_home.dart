// ignore_for_file: prefer_const_constructors

import 'package:apothecary/details/detail.dart';
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
          onTap: () {
            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Details_alovera()));
          },
          // leading: Image(image: AssetImage('images/Plants/Aloe_vera.jpg')),
          leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('images/Plants/Aloe_vera.jpg')),
          title: Text('Aloe Vera'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(image: AssetImage('images/Plants/ashwagandha.png')),
          leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('images/Plants/ashwagandha.png')),
          title: Text('Ashwagandha'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(image: AssetImage('images/Plants/calendula.jpg')),
          leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('images/Plants/calendula.jpg')),
          title: Text('Calendula'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(
          //     image: AssetImage('images/Plants/lavender-flower-seeds.jpg')),
          leading: CircleAvatar(radius: 40,
            backgroundImage: AssetImage('images/Plants/lavender-flower-seeds.jpg')),
          title: Text('Lavender'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(
          //     image: AssetImage('images/Plants/methi-kasturi-fenugreek.jpg')),
          leading: CircleAvatar(radius: 40,
            backgroundImage: AssetImage('images/Plants/methi-kasturi-fenugreek.jpg')),
          title: Text('Fenugreek'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(image: AssetImage('images/Plants/Neem.webp')),
          leading: CircleAvatar(radius: 40,
            backgroundImage: AssetImage('images/Plants/Neem.webp')),
          title: Text('Neem'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(image: AssetImage('images/Plants/rosemary.jpg')),
          leading: CircleAvatar(radius: 40,
            backgroundImage: AssetImage('images/Plants/rosemary.jpg')),
          title: Text('Rosemary'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(
          //     image: AssetImage(
                  // 'images/Plants/thyme-thymus-vulgaris-herb-seeds.jpg')),
          leading: CircleAvatar(radius: 40,
            backgroundImage: AssetImage('images/Plants/thyme-thymus-vulgaris-herb-seeds.jpg')),
          title: Text('Thyme'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading:
          //     Image(image: AssetImage('images/Plants/Tulasi_Holy_basil.jpg')),
          leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('images/Plants/Tulasi_Holy_basil.jpg')),
          title: Text('Tulasi'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(
          //     image: AssetImage(
          //         'images/Plants/weed-marijuana-polling-tobacco.jpg')),
          leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('images/Plants/weed-marijuana-polling-tobacco.jpg')),
          title: Text('Weed'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
      ],
    );
  }
}
