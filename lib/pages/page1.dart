// // ignore_for_file: avoid_print
// import 'package:flutter/material.dart';
// import 'package:map/Api/api1.dart';
// import 'package:map/model/model1.dart';



// class CategoryListScreen extends StatelessWidget {
//   ///
//   final ApiService apiService = ApiService();

//   CategoryListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Categories'),
//       ),
//       body: FutureBuilder<List<Category>>(
//         future: apiService.fetchCategories(), 
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return const Center(child: Text('No categories found.'));
//           } else {
//             final categories = snapshot.data!;
//             return ListView.builder(
//               itemCount: categories.length,
//               itemBuilder: (context, i) {
//                 return ListTile(
//                   leading: CircleAvatar(
//                     backgroundColor: Color(int.parse(categories[i].colorHex.replaceFirst('#', '0xff'))),
//                     child: const Icon(Icons.category),
//                   ),
//                   title: Text(categories[i].name),
//                   subtitle: Text('Locations: ${categories[i].locationCount}'),
//                   trailing: Image.network(
//                     categories[i].fullImageUrl, 
//                     width: 50,
//                     height: 50,
//                     fit: BoxFit.cover,
//                     errorBuilder: (context, error, stackTrace) {
//                       print("$error") ;
//                       return const Icon(Icons.broken_image);
//                     },
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }