import 'package:apothecary/misc/mybutton.dart';
import 'package:apothecary/misc/text_field.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  // ignore: non_constant_identifier_names
  Future signUp() async {
    // create user
    if (passwordConfirmed() == true) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _usernameController.text.trim(),
        password: _passwordController.text.trim(),
      );
    }
//  adding user details
    addUserDetails(
      _firstNameController.text.trim(),
      _lastNameController.text.trim(),
      double.parse(_phoneController.text.trim()),
      _usernameController.text.trim(),
    );
  }

  Future addUserDetails(
      String firstName, String lastName, double phone, String email) async {
    await FirebaseFirestore.instance.collection('users').add({
      'firstname': firstName,
      'lastname': lastName,
      'phone': phone,
      'email': email,
    });
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50.0),
                const Text(
                  'Hello there',
                  style: TextStyle(
                    fontSize: 52.0,
                    fontFamily: 'Brand Regular',
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10.0),
                // Register your details
                const Text(
                  'Register below with your details',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: 'Brand Bold',
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20.0),

                // Firstname textfeild
                MyTextField(
                  controller: _firstNameController,
                  hintText: 'First Name',
                  obscureText: false,
                ),
                const SizedBox(height: 10.0),

                // lastname textfeild
                MyTextField(
                  controller: _lastNameController,
                  hintText: 'Last Name',
                  obscureText: false,
                ),
                const SizedBox(height: 10.0),

                // // age textfeild
                // MyTextField(
                //   controller: _ageController,
                //   hintText: 'Age',
                //   obscureText: false,
                // ),
                // const SizedBox(height: 10.0),

                // Phone textfeild
                MyTextField(
                  controller: _phoneController,
                  hintText: 'Phone Number',
                  obscureText: false,
                ),
                const SizedBox(height: 10.0),
                // username textfeild
                MyTextField(
                  controller: _usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10.0),
                // password textfeild
                MyTextField(
                  controller: _passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 10.0),
                //COnfirm password
                MyTextField(
                  controller: _confirmPasswordController,
                  hintText: 'Confirm Password',
                  obscureText: true,
                ),

                const SizedBox(height: 20.0),
                //signup button

                MyButton(
                  text: "Sign Up",
                  onTap: signUp,
                ),

                const SizedBox(height: 50.0),
                //Already a member ? Login now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already a member?',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(width: 4.0),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: const Text(
                        'Login Now',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
