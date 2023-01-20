// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.green,
          title: Text(
            'SignUp User',
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      body: SignUpForm(),
    );
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  var name;
  var email;
  var passwd;
  var confirmpasswd;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
                // border: BorderRadius()
              ),
              controller: nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your name';
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
              controller: emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter your email';
                } else if (!value.contains('@')) {
                  return 'Please enter valid email';
                }
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              controller: passwordController,
              validator: (password) {
                if (password == null || password.isEmpty) {
                  return 'Enter your password';
                }
                passwd = password;
              },
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
              ),
              controller: confirmpasswdController,
              validator: (confirmpasswd) {
                if (confirmpasswd == null || confirmpasswd.isEmpty) {
                  return 'Enter your confirm password';
                } else if (passwd != confirmpasswd) {
                  return 'Not Matched with Password';
                }
              },
            ),
            SizedBox(
              height: 250,
            ),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      name = nameController.text;
                      email = emailController.text;
                      passwd = passwordController.text;
                      confirmpasswd = confirmpasswdController.text;
                    });
                  }
                },
                child: Text('SignUp'))
          ],
        ),
      ),
    );
  }
}
