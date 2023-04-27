// ignore_for_file: prefer_const_constructors
import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_tflite/flutter_tflite.dart';
import 'package:image_picker/image_picker.dart';
import 'package:apothecary/details/detail.dart';

class ImageScanner extends StatefulWidget {
  const ImageScanner({Key? key}) : super(key: key);

  @override
  ImageScannerState createState() => ImageScannerState();
}

class ImageScannerState extends State<ImageScanner> {
  late File _image;
  late List _results;
  bool imageSelect = false;
  @override
  void initState() {
    super.initState();
    loadModel();
  }

  Future loadModel() async {
    Tflite.close();
    String res;
    res = (await Tflite.loadModel(
        model: "assets/plants_model.tflite",
        labels: "assets/labels_plants.txt"))!;
    print("Models loading status: $res");
  }

  Future imageClassification(File image) async {
    final List? recognitions = await Tflite.runModelOnImage(
      path: image.path,
      numResults: 6,
      threshold: 0.05,
      imageMean: 127.5,
      imageStd: 127.5,
    );
    setState(() {
      _results = recognitions!;
      _image = image;
      imageSelect = true;
    });
  }

  Future<List> getAllInfo({required String label}) async {
    try {
      String baseUrl = 'https://apothecary.up.railway.app?search=$label';
      var response = await http.get(Uri.parse(baseUrl));
      print(response.body);
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body);
      } else {
        return Future.error('Server error');
      }
    } catch (e) {
      return Future.error(e);
    }
  }

  // Future<List> getAllInfo() async {
  //   try {
  //     String baseUrl = 'https://apothecary.up.railway.app';
  //     var response = await http.get(Uri.parse(baseUrl));
  //     print(response.body);
  //     if (response.statusCode == 200) {
  //       print(response.body);
  //       return jsonDecode(response.body);
  //     } else {
  //       return Future.error('Server error');
  //     }
  //   } catch (e) {
  //     return Future.error(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: ListView(
        children: [
          (imageSelect)
              ? Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.file(_image),
                )
              : Container(
                  height: 550,
                  width: 550,
                  child: Center(
                    child: FloatingActionButton(
                      onPressed: loadCamera,
                      child: Icon(Icons.camera_alt),
                    ),
                  )),
          SingleChildScrollView(
            child: Column(
              children: (imageSelect)
                  ? _results.map((result) {
                      return Card(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            "${result['label']}",
                            style: const TextStyle(
                                color: Colors.red, fontSize: 20),
                          ),
                        ),
                      );
                    }).toList()
                  : [],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: pickImage,
        tooltip: "Pick Image",
        child: const Icon(Icons.folder_copy),
      ),
    );
  }

  Widget buildCard(BuildContext context) {
    return FutureBuilder<List>(
        future: getAllInfo(label: _results[0]['label']),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // print(snapshot);
            return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Details_tulip()));
                    },
                    // leading: CircleAvatar(
                    //   radius: 40,
                    //   backgroundImage: snapshot.data![i]['photo'],
                    // ),
                    title: Text(
                      snapshot.data![i]['name'],
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text(
                      snapshot.data![i]['sname'],
                      style: TextStyle(fontSize: 15),
                    ),
                    // trailing: Icon(
                    //   Icons.info,
                    // ),
                  );
                });
          } else {
            return const Center(
              child: Text('No Data'),
            );
          }
        });
  }

  Future pickImage() async {
    final ImagePicker picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );
    File image = File(pickedFile!.path);
    imageClassification(image);
    await getAllInfo(label: _results[0]['label']);
  }

  Future loadCamera() async {
    final picker = ImagePicker();
    final cameraFile = await picker.pickImage(source: ImageSource.camera);
    File image = File(cameraFile!.path);
    imageClassification(image);
  }
}
