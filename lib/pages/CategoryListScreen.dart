import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map/Api/api2.dart';
import 'package:map/model/model2.dart';
import 'package:map/pages/LocationListScreen.dart';

class CategoryListScreen extends StatelessWidget {
//?
final ApiService apiService = ApiService();
//?
  CategoryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ////
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Categories'),
      ),
      body: Stack(
        children: [
          // خريطة جوجل
          Positioned.fill(
            child: GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: LatLng(31.99330933, 44.3153606), // موقع افتراضي
                zoom: 14.0,
              ),
              onMapCreated: (GoogleMapController controller) {},
            ),
          ),
          ///////
          // شريط التمرير الأفقي في الأسفل
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 100, // تحديد ارتفاع الشريط الأفقي
            child: Container(
              color: Colors.black.withOpacity(0.7), 
              //
              child: FutureBuilder<List<Category>>(
                future: apiService.fetchCategories(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator(color: Colors.amber,));
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Center(child: Text('No categories found.'));
                  } else {
                    ///
                    final categories = snapshot.data!;
                    return ListView.builder(
                      scrollDirection: Axis.horizontal, 
                      itemCount: categories.length,
                      itemBuilder: (context, i) {
                        return Container(
                          width: 100, 
                          margin: const EdgeInsets.all(8.0), // إضافة هامش بين العناصر
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LocationListScreen(category: categories[i]),
                                ),
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  backgroundColor: _parseColor(categories[i].colorHex),
                                  child: const Icon(Icons.category_outlined, color: Colors.white),
                                ),
                                const SizedBox(height: 8.0), // إضافة مساحة بين العناصر
                                Text(
                                  categories[i].name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(color: Colors.white),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
///////////////////////////////////////////////////////////////////////////////////////
  // دالة لتحليل سلسلة النص للون وإرجاع لون صحيح أو لون افتراضي في حالة الخطأ
  Color _parseColor(String colorHex) {
    if (colorHex.isNotEmpty && colorHex.startsWith('#')) {
      try {
        return Color(int.parse(colorHex.replaceFirst('#', '0xff')));
      } catch (e) {
        print("Error parsing color: $e");
        return Colors.grey; // لون افتراضي في حالة حدوث خطأ
      }
    }
    return Colors.grey; // لون افتراضي إذا كانت السلسلة فارغة أو غير صالحة
  }
}

