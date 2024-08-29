import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:map/model/model2.dart';

class ApiService {
  final String apiUrl = "https://alataba.org/vs01/get_category_locations";

  Future<List<Category>> fetchCategories() async {
    final response = await http.post(
      Uri.parse(apiUrl),
      body: {"language": "ar"},
      headers: {'Authorization': 'Bearer 4808668736207d904285640d2a556493'},
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      //
      List<Category> categories = [];
      for (var item in data['message']['categories']) {
        categories.add(Category.fromJson(item));
      }
      return categories;
    } else {
      throw Exception('Failed to load categories');
    }
  }
}
