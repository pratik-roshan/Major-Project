// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tflite/flutter_tflite.dart';
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
  final picker = ImagePicker();
  final imagePicker = ImagePicker();
  bool _loading = false;
  List _predictions = [];

  @override
  void initState() {
    super.initState();
    loadmodel();
  }

  Future loadmodel() async {
    Tflite.close();
    String res;
    res = (await Tflite.loadModel(
        model: 'assets/flowers.tflite', labels: 'assets/labels.txt'))!;
    print("Models loading status: $res");
  }

  Future imageClassification(File image) async {
    var prediction = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 2,
        threshold: 0.6,
        imageMean: 127.5,
        imageStd: 127.5);

    setState(() {
      _predictions = prediction!;
      _image = image;
      _loading = true;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future loadcamera() async {
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    if (image == null) {
      return null;
    } else {
      _image = File(image.path);
    }
  }

  Future galleryImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) {
      return null;
    } else {
      _image = File(pickedFile.path);
    }
    imageClassification(_image);
    // return Image.file(File(pickedFile.path));
    // }
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
              onPressed: () => galleryImage(),
              child: Text('Image'),
            ),
            // Icon(Icons.image),
            // FloatingActionButton(
            //     onPressed: () {}, child: Icon(Icons.camera_alt, size: 30)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => loadcamera(),
        child: const Icon(
          Icons.camera_alt,
          size: 30,
        ),
      ),
    );
  }
}
