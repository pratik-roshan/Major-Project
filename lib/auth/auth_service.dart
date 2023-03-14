import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  // Google Sign In
  signInWithGoogle() async {
    bool result = false;
    try {
      // begin interaction sign in process
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
      // obtain auth details from request
      final GoogleSignInAuthentication gAuth = await gUser!.authentication;

      // create a new credential for user
      final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      User? user = userCredential.user;
      print(user!.displayName);
      if (user != null) {
        if (userCredential.additionalUserInfo!.isNewUser) {
          await FirebaseFirestore.instance.collection('users').add({
            'firstname': user.displayName,
            'lastname': user.displayName,
            'phone': user.phoneNumber,
            'email': user.email,
          });
        }
        result = true;
      }
      // finally, lets sign in
      return result;
    } catch (e) {
      // Fluttertoast.showToast(msg: e);
      print(e);
    }
    return result;
  }
}





// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class AuthService {
//   // Google Sign In
//   signInWithGoogle() async {
//     // begin interaction sign in process
//     final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
//     // obtain auth details from request
//     final GoogleSignInAuthentication gAuth = await gUser!.authentication;

//     // create a new credential for user
//     final credential = GoogleAuthProvider.credential(
//       accessToken: gAuth.accessToken,
//       idToken: gAuth.idToken,
//     );

//     // finally, lets sign in
//     return await FirebaseAuth.instance.signInWithCredential(credential);
//   }
// }
