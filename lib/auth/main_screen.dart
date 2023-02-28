import 'package:apothecary/screens/account_screens.dart';
import 'package:apothecary/screens/hot_topic.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../screens/user_profile.dart';
import 'auth_page.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return  UserProfile();
            } else {
              return const AuthPage();
            }
          }),
    );
  }
}
