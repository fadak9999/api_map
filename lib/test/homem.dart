// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'dart:convert' as convert;
// import 'package:http/http.dart' as http;
// import 'package:map/test/model.dart';


// class Homem extends StatefulWidget {
//   const Homem({super.key});
//   @override
//   State<Homem> createState() => _HomemState();
// }

// class _HomemState extends State<Homem> {
//   /// إعدادات الخريطة
//   static const CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(32.033431, 44.403403),
//     zoom: 14.4746,
//   );

//   // قائمة الفئات
//   List<Category2> categories = [];
  
//   Future<void> getCategory() async {
//     String url = "https://alataba.org/vs01/get_category";
//     var response = await http.post(Uri.parse(url),body: {"language":"ar"},headers:{"Authorization":"Bearer 4808668736207d904285640d2a556493"} );//?

//     if (response.statusCode == 200) {
//       var responseBody = convert.jsonDecode(response.body);

//       // تحقق مما إذا كانت الاستجابة خريطة وتحتوي على المفتاح المطلوب
//       if (responseBody is Map<String, dynamic> && responseBody.containsKey('message')) {
//         setState(() {
//           categories = (responseBody['message'] as List)
//               .map((categoryJson) => Category2.fromJson(categoryJson))
//               .toList();
//         });
//       } else {
//         print('تنسيق الاستجابة غير متوقع.');
//       }
//     } else {
//       print('فشل الطلب مع الحالة: ${response.statusCode}.');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     getCategory();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // الخريطة
//           Container(
//             child: GoogleMap(
//               mapType: MapType.normal,
//               initialCameraPosition: _kGooglePlex,
//               onMapCreated: (GoogleMapController controller) {},
//             ),
//           ),
//           // الأزرار
//           if (categories.isNotEmpty)
//             Container(
//               margin: EdgeInsets.only(top: 650),
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: categories.length,
//                 itemBuilder: (context, index) {
//                   var category = categories[index];
//                   return _buildCategoryButton(
//                     Icons.category, // استخدم أيقونة ثابتة
//                     category.name, // اسم الفئة ديناميكي
//                     category.id, // معرف الفئة ديناميكي
//                   );
//                 },
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// /////////////////////////////////////////////////////////////////////////////////////

//   Widget _buildCategoryButton(IconData icon, String label, String id) {
//     return Container(
//       padding: const EdgeInsets.all(30),
//       child: ElevatedButton.icon(
//         onPressed: () {
//           print("Category ID: $id"); // عملية عند الضغط على الزر باستخدام الـ ID
//         },
//         icon: Icon(
//           icon,
//           color: Colors.white,
//         ),
//         label: Text(
//           label,
//           style: TextStyle(color: Colors.white),
//         ),
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Color.fromARGB(255, 177, 175, 175),  
//           padding: EdgeInsets.all(16),
//           minimumSize: const Size(40, 50), 
//         ),
//       ),
//     );
//   }
// }
