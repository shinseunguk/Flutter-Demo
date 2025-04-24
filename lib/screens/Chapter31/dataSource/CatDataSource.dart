import 'dart:convert';

import 'package:flutter_demo/screens/Chapter31/model/Cat.dart';
import 'package:http/http.dart' as http;

class Catdatasource {
  Future<List<Cat>> fetchCats() async {
    final response = await http.get(Uri.parse('https://api.thecatapi.com/v1/images/search'));
    return jsonDecode(response.body).map<Cat>((json) => Cat.fromJson(json)).toList();
  }
}
