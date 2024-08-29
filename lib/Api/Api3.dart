// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
// // import 'package:map/model/model22/model_3.dart';
// // import 'package:map/model/model22/model_32.dart';


// // class ApiService {

// //   final String categoriesApiUrl = "https://alataba.org/vs01/get_category";
// //   final String locationsApiUrl = "https://alataba.org/vs01/get_category_locations";
// // //////////////////////////////////////////////////////////////////////////////////
// //  Future<List<Category>> fetchCategories() async {
// //   final response = await http.post(Uri.parse(categoriesApiUrl), body: {"language": "ar"}, headers: {'Authorization': 'Bearer 4808668736207d904285640d2a556493'});

// //   if (response.statusCode == 200) {
// //     final data = json.decode(response.body);
// //     List<Category> categories = [];
// //     for (var item in data['message']) {
// //       categories.add(Category.fromJson(item));
// //     }
// //     return categories;
// //   } else {
// //     throw Exception('Failed to load categories');
// //   }
// // }

// // //////////////////////////////////////////////////////////////////////////////////////////
// //  Future<List<Location>> fetchLocations(String categoryId) async {
// //   final response = await http.post(
// //     Uri.parse(locationsApiUrl),
// //     body: {"category_id": categoryId},
// //   );

// //   if (response.statusCode == 200) {
// //     final data = json.decode(response.body);
// //     List<Location> locations = [];
// //     for (var item in data['message']['locations']) {
// //       locations.add(Location.fromJson(item));
// //     }
// //     return locations;
// //   } else {
// //     throw Exception('Failed to load locations');
// //   }
// // }

// // }
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:map/model/model22/model_3.dart';

// class ApiService {
//   final String categoriesApiUrl = "https://alataba.org/vs01/get_category";
//   final String locationsApiUrl = "https://alataba.org/vs01/get_category_locations";

//   Future<List<Category>> fetchCategories() async {
//     final response = await http.post(
//       Uri.parse(categoriesApiUrl),
//       body: {"language": "ar"},
//       headers: {'Authorization': 'Bearer 4808668736207d904285640d2a556493'},
//     );

//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       List<Category> categories = [];
//       for (var item in data['message']) {
//         categories.add(Category.fromJson(item));
//       }
//       return categories;
//     } else {
//       throw Exception('Failed to load categories');
//     }
//   }
// ////////////////////////////
//   // Future<List<Location>> fetchLocations(String categoryId) async {
//   //   final response = await http.post(
//   //     Uri.parse(locationsApiUrl),
//   //   body: {"language": "ar"},
//   //     headers: {'Authorization': 'Bearer 4808668736207d904285640d2a556493'},
//   //   );

//   //   if (response.statusCode == 200) {
//   //     final data = json.decode(response.body);
//   //     List<Location> locations = [];
//   //     for (var item in data['message']['locations']) {
//   //       locations.add(Location.fromJson(item));
//   //     }
//   //     return locations;
//   //   } else {
//   //     throw Exception('Failed to load locations');
//   //   }
//   // }
//     Future<List<Category>> fetchLocations(String id) async {
//     final response = await http.post(
//       Uri.parse(locationsApiUrl),
//       body: {"language": "ar"},
//       headers: {'Authorization': 'Bearer 4808668736207d904285640d2a556493'},
//     );

//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       //
//       List<Category> categories = [];
//       for (var item in data['message']['categories']) {
//         categories.add(Category.fromJson(item));
//       }
//       return categories;
//     } else {
//       throw Exception('Failed to load categories');
//     }
//   }
// }
