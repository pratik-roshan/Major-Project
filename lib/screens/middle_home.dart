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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Details_tulip()));
          },
          // leading: Image(image: AssetImage('images/Plants/Aloe_vera.jpg')),
          leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/Plants/tulip.jpg')),
          title: Text('Tulip'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(image: AssetImage('images/Plants/ashwagandha.png')),
          leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/Plants/Rose.jpg')),
          title: Text('Rose'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(image: AssetImage('images/Plants/calendula.jpg')),
          leading: CircleAvatar(
              radius: 40,
              backgroundImage:
                  AssetImage('assets/images/Plants/black-eyed-susan.jpg')),
          title: Text('Black Eyed Susan'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(
          //     image: AssetImage('images/Plants/lavender-flower-seeds.jpg')),
          leading: CircleAvatar(
              radius: 40,
              backgroundImage:
                  AssetImage('assets/images/Plants/sunflower.jpg')),
          title: Text('Sunflower'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(
          //     image: AssetImage('images/Plants/methi-kasturi-fenugreek.jpg')),
          leading: CircleAvatar(
              radius: 40,
              backgroundImage:
                  AssetImage('assets/images/Plants/water-lily.jpg')),
          title: Text('Water Lily'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(image: AssetImage('images/Plants/Neem.webp')),
          leading: CircleAvatar(
              radius: 40,
              backgroundImage:
                  AssetImage('assets/images/Plants/Dandelion.jpg')),
          title: Text('Dandelion'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(image: AssetImage('images/Plants/rosemary.jpg')),
          leading: CircleAvatar(
              radius: 40,
              backgroundImage:
                  AssetImage('assets/images/Plants/California-Poppy.webp')),
          title: Text('California Poppy'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading: Image(
          //     image: AssetImage(
          // 'images/Plants/thyme-thymus-vulgaris-herb-seeds.jpg')),
          leading: CircleAvatar(
              radius: 40,
              backgroundImage:
                  AssetImage('assets/images/Plants/Magnolia.webp')),
          title: Text('Magnolia'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          // leading:
          //     Image(image: AssetImage('images/Plants/Tulasi_Holy_basil.jpg')),
          leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/Plants/Iris1.jpg')),
          title: Text('Iris'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: CircleAvatar(
              radius: 40,
              backgroundImage:
                  AssetImage('assets/images/Plants/Carnation.jpg')),
          title: Text('Carnation'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: CircleAvatar(
              radius: 40,
              backgroundImage:
                  AssetImage('assets/images/Plants/bellflower.jpg')),
          title: Text('Bellflower'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: CircleAvatar(
              radius: 40,
              backgroundImage:
                  AssetImage('assets/images/Plants/Common-Daisy.jpg')),
          title: Text('Common Daisy'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: CircleAvatar(
              radius: 40,
              backgroundImage:
                  AssetImage('assets/images/Plants/Coreopsis.jpg')),
          title: Text('Coreopsis'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: CircleAvatar(
              radius: 40,
              backgroundImage:
                  AssetImage('assets/images/Plants/calendula.webp')),
          title: Text('Calendula'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/Plants/Astilbe.jpg')),
          title: Text('Astilbe'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/Plants/Daffodil.jpg')),
          title: Text('Daffodil'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
        ListTile(
          leading: CircleAvatar(
              radius: 40,
              backgroundImage:
                  AssetImage('assets/images/Plants/Aloe_vera.jpg')),
          title: Text('Aloe Vera'),
          subtitle: Text('click to preview'),
          trailing: Icon(Icons.info),
        ),
      ],
    );
  }
}
