import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class UserProfile extends StatelessWidget {
   UserProfile({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed:signUserOut, child:const Text('LogOut',style:TextStyle(fontSize: 23),),

    );
  }
}
