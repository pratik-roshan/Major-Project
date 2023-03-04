// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:image_picker/image_picker.dart';

class ImageScanner extends StatefulWidget {
  const ImageScanner({Key? key}) : super(key: key);

  @override
  State<ImageScanner> createState() => _ImageScannerState();
}

class _ImageScannerState extends State<ImageScanner> {
    late File _image;
    // instanciate imagepicker
    final picker= ImagePicker();
  final imagePicker=ImagePicker();
  Future getImage() async{
    final image = await imagePicker.getImage(source:ImageSource.camera);
    setState(() {
      _image=File(image!.path);
    });
  } 
  Future galleryImage() async{
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
  return Image.file(File(pickedFile.path));
}


  }

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
              onPressed: () =>galleryImage(),
              child: Text('Image'),
            ),
            // Icon(Icons.image),
            // FloatingActionButton(
            //     onPressed: () {}, child: Icon(Icons.camera_alt, size: 30)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>getImage(),
        child: const Icon(
          Icons.camera_alt,
          size: 30,
        ),
      ),
    );
  }
}
