import 'dart:convert';
import 'dart:math';
import 'package:apothecary/details/detail.dart';
import 'package:apothecary/models/plants_model.dart';
import 'package:http/http.dart' as http;
// import 'package:apothecary/details/detail.dart';
import 'package:flutter/material.dart';
// import 'package:http_requests/http_requests.dart';

class HomePageMiddle extends StatefulWidget {
  const HomePageMiddle({Key? key}) : super(key: key);

  @override
  State<HomePageMiddle> createState() => _HomePageMiddleState();
}

class _HomePageMiddleState extends State<HomePageMiddle> {
  // Plants allplants = Plants();
  List<Plants> allplants = [];
  @override
  void initState() {
    getAllInfo();
    super.initState();
  }

  String baseUrl = 'https://apothecary.up.railway.app/';

  Future<List> getAllInfo() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final body = response.body;
      if (body != null && body.isNotEmpty) {
        final jsonData = json.decode(response.body) as List<dynamic>;
        final plants = jsonData.map((e) => Plants.fromJson(e)).toList();
        setState(() {
          allplants = plants;
        });
      } else {
        throw Exception('Failed to load data: empty response body');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
    return Future.error(e);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: allplants.length,
        itemBuilder: (context, index) {
          final plant = allplants[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Details_Plant(plant: plant)));
            },
            child: ListTile(
              title: Text(
                plant.name,
                style: TextStyle(fontSize: 18),
              ),
              subtitle: Text(plant.sname),
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(plant.photo),
              ),
            ),
          );
        });
    // return FutureBuilder<List>(
    //     future: getAllInfo(),
    //     builder: (context, snapshot) {
    //       if (snapshot.hasData) {
    //         // print(snapshot);
    //         return ListView.builder(
    //             itemCount: snapshot.data?.length,
    //             itemBuilder: (context, i) {
    //               return ListTile(
    //                 onTap: () {
    //                   Navigator.push(
    //                       context,
    //                       MaterialPageRoute(
    //                           builder: (context) => const Details_Plant()));
    //                 },
    //                 leading: CircleAvatar(
    //                   radius: 40,
    //                   backgroundImage: NetworkImage(snapshot.data![i]['photo']),
    //                 ),
    //                 title: Text(
    //                   snapshot.data![i]['name'],
    //                   style: TextStyle(fontSize: 20),
    //                 ),
    //                 subtitle: Text(
    //                   snapshot.data![i]['sname'],
    //                   style: TextStyle(fontSize: 15),
    //                 ),
    //                 trailing: Icon(
    //                   Icons.info,
    //                 ),
    //               );
    //             });
    //       } else {
    //         return const Center(
    //           child: Text('No Data'),
    //         );
    //       }
    //     });
  }
  // // return Scaffold(
  //     body: Container(
  //   child: ElevatedButton(
  //     child: Container(),
  //     onPressed: getAllInfo,
  //   ),
  // ));
}

@override
Widget build(BuildContext context) {
  // TODO: implement build
  throw UnimplementedError();
}

// // ignore_for_file: prefer_const_constructors

// import 'package:apothecary/details/aloe_vera.dart';
// import 'package:apothecary/details/detail.dart';
// import 'package:apothecary/details/sunlflower.dart';
// import 'package:flutter/material.dart';

// class HomePageMiddle extends StatefulWidget {
//   const HomePageMiddle({Key? key}) : super(key: key);

//   @override
//   State<HomePageMiddle> createState() => _HomePageMiddleState();
// }

// class _HomePageMiddleState extends State<HomePageMiddle> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       // ignore: prefer_const_literals_to_create_immutables
//       children: [
//         ListTile(
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => const Details_tulip()));
//           },
//           // leading: Image(image: AssetImage('images/Plants/Aloe_vera.jpg')),
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage: AssetImage('assets/images/Plants/tulip.jpg')),
//           title: Text('Tulip'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           // leading: Image(image: AssetImage('images/Plants/ashwagandha.png')),
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage: AssetImage('assets/images/Plants/Rose.jpg')),
//           title: Text('Rose'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           // leading: Image(image: AssetImage('images/Plants/calendula.jpg')),
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage:
//                   AssetImage('assets/images/Plants/black-eyed-susan.jpg')),
//           title: Text('Black Eyed Susan'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => const Sunflower()));
//           },
//           // leading: Image(
//           //     image: AssetImage('images/Plants/lavender-flower-seeds.jpg')),
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage:
//                   AssetImage('assets/images/Plants/sunflower.jpg')),
//           title: Text('Sunflower'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           // leading: Image(
//           //     image: AssetImage('images/Plants/methi-kasturi-fenugreek.jpg')),
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage:
//                   AssetImage('assets/images/Plants/water-lily.jpg')),
//           title: Text('Water Lily'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           // leading: Image(image: AssetImage('images/Plants/Neem.webp')),
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage:
//                   AssetImage('assets/images/Plants/Dandelion.jpg')),
//           title: Text('Dandelion'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           // leading: Image(image: AssetImage('images/Plants/rosemary.jpg')),
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage:
//                   AssetImage('assets/images/Plants/California-Poppy.webp')),
//           title: Text('California Poppy'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           // leading: Image(
//           //     image: AssetImage(
//           // 'images/Plants/thyme-thymus-vulgaris-herb-seeds.jpg')),
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage:
//                   AssetImage('assets/images/Plants/Magnolia.webp')),
//           title: Text('Magnolia'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           // leading:
//           //     Image(image: AssetImage('images/Plants/Tulasi_Holy_basil.jpg')),
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage: AssetImage('assets/images/Plants/Iris1.jpg')),
//           title: Text('Iris'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage:
//                   AssetImage('assets/images/Plants/Carnation.jpg')),
//           title: Text('Carnation'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage:
//                   AssetImage('assets/images/Plants/bellflower.jpg')),
//           title: Text('Bellflower'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage:
//                   AssetImage('assets/images/Plants/Common-Daisy.jpg')),
//           title: Text('Common Daisy'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage:
//                   AssetImage('assets/images/Plants/Coreopsis.jpg')),
//           title: Text('Coreopsis'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage:
//                   AssetImage('assets/images/Plants/calendula.webp')),
//           title: Text('Calendula'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage: AssetImage('assets/images/Plants/Astilbe.jpg')),
//           title: Text('Astilbe'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage: AssetImage('assets/images/Plants/Daffodil.jpg')),
//           title: Text('Daffodil'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//         ListTile(
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (context) => const Alovera()));
//           },
//           leading: CircleAvatar(
//               radius: 40,
//               backgroundImage:
//                   AssetImage('assets/images/Plants/Aloe_vera.jpg')),
//           title: Text('Aloe Vera'),
//           subtitle: Text('click to preview'),
//           trailing: Icon(Icons.info),
//         ),
//       ],
//     );
//   }
// }
// }

