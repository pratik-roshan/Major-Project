import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageScanner extends StatefulWidget {
  const ImageScanner({Key? key}) : super(key: key);

  @override
  State<ImageScanner> createState() => _ImageScannerState();
}

class _ImageScannerState extends State<ImageScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 160, vertical: 70),
          child: ListView(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Image',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Camera',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          )),
    );
  }
}
