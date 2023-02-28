import 'package:flutter/material.dart';

class HotTopics extends StatefulWidget {
  const HotTopics({Key? key}) : super(key: key);

  @override
  State<HotTopics> createState() => _HotTopicsState();
}

class _HotTopicsState extends State<HotTopics> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Welcome To Hot Topic!!!',
      style: TextStyle(fontWeight: FontWeight.bold),
    ));
  }
}
