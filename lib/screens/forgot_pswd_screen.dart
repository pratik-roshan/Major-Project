// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Forgott extends StatelessWidget {
  const Forgott({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(title: Text('Forgot password'),
      backgroundColor: Colors.green,),
      body: ForgotPassword()
    );
  }
}


class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  var email;
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: ListView(children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              // border: BorderRadius()
            ),
            controller: emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Enter your email';
              } else if (!value.contains('@')) {
                return 'Enter valid email';
              }
            },
          ),
          SizedBox(height: 40,),
          ElevatedButton(onPressed: (){
            if (_formKey.currentState!.validate()){
              setState(() {
                email=emailController.text;
              });
            }
          }, child: Text('Send',style: TextStyle(fontSize: 20),),
          ),
        ]),
      ),
    );
  }
}
