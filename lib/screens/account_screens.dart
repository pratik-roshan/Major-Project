// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:apothecary/auth/auth_page.dart';
import 'package:apothecary/auth/main_screen.dart';
import 'package:flutter/material.dart';
// import 'page.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return MainScreen();
  }
}
