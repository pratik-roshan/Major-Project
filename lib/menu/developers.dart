import 'package:flutter/material.dart';

class Developers extends StatelessWidget {
  const Developers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: const Text('Developers'),
        backgroundColor: Colors.green,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 100.0,
        crossAxisSpacing: 10.0,
        children: [
          Image.asset('images/developers/rupesh.jpg'),
          Image.asset('images/developers/sairam.jpg'),
          Image.asset('images/developers/pratik.jpg'),
          Image.asset('images/developers/prashant.jpg'),
        ],
      ),
    );
  }
}
