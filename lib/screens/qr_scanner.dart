// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.folder_copy,
              size: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Image'),
            ),
            // Icon(Icons.image),
            // FloatingActionButton(
            //     onPressed: () {}, child: Icon(Icons.camera_alt, size: 30)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.camera_alt,
          size: 30,
        ),
      ),
    );
  }
}
