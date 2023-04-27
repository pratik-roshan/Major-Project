// search_widget.dart

import 'package:flutter/material.dart';

import '../details/detail.dart';

class SearchWidget extends StatefulWidget {
  final Function(String) onSearch;

  const SearchWidget({Key? key, required this.onSearch}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      // onTap: () {
      //   Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //           builder: (context) => Details_Plant(plant:)));
      // },
      decoration: InputDecoration(
        fillColor: Colors.greenAccent,
        hintText: 'Search',
        suffixIcon: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            widget.onSearch(_controller.text);
          },
        ),
      ),
    );
  }
}
