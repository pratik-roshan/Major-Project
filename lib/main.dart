// ignore_for_file: prefer_const_constructors

import 'package:apothecary/screens/home_screens.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Apothecary',
        home: EasySplashScreen(
          navigator: MyHomePage(),
          durationInSeconds: 2,
          logoWidth: 75,
          loadingText: const Text('Fetching Data...'),
          logo: Image(image: AssetImage('assets/images/1.png')),
        ));
  }
}
