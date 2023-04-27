// medicine_service.dart

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:apothecary/models/plants_model.dart';

class SearchService {
  static const API_URL = 'https://apothecary.up.railway.app/?search=';

  static Future<List<Plants>> search(String query) async {
    final response = await http.get(Uri.parse('$API_URL$query'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return List<Plants>.from(data.map((json) => Plants.fromJson(json)));
    } else {
      throw Exception('Failed to search medicines');
    }
  }
}
