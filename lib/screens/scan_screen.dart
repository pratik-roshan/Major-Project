// search_screen.dart

import 'package:flutter/material.dart';
import 'package:apothecary/models/plants_model.dart';
import 'package:apothecary/services/search_service.dart';
import 'package:apothecary/misc/searchwidget.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late Future<List<Plants>> _plants;

  @override
  void initState() {
    super.initState();
    _plants = SearchService.search('');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchWidget(
          onSearch: (query) {
            setState(() {
              _plants = SearchService.search(query);
            });
          },
        ),
        Expanded(
          child: FutureBuilder<List<Plants>>(
            future: _plants,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final results = snapshot.data!;
                return ListView.builder(
                  itemCount: results.length,
                  itemBuilder: (context, index) {
                    final res = results[index];
                    return ListTile(
                      title: Text(res.name),
                      subtitle: Text(res.sname),
                    );
                  },
                );
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ],
    );
  }
}
