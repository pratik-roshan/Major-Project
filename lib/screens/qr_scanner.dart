import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
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
                child: Icon(Icons.image),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 1800,
                height: 100,
                alignment: Alignment.center,
                child: FloatingActionButton(
                    onPressed: () {}, child: Icon(Icons.camera_alt, size: 30)),
              ),
            ],
          )),
    );
  }
}
