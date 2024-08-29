// class Location {
//   final String id;
//   final String name;
//   final String googleLatitude;
//   final String googleLongitude;
//   final String description;
//   final String categoryName;
//   final String colorHex;
//   final String iconId;
//   final String image;

//   Location({
//     required this.id,
//     required this.name,
//     required this.googleLatitude,
//     required this.googleLongitude,
//     required this.description,
//     required this.categoryName,
//     required this.colorHex,
//     required this.iconId,
//     required this.image,
//   });

//   factory Location.fromJson(Map<String, dynamic> json) {
//     return Location(
//     id:int.parse( json['Id']).toString(),
//       name: json['name'],
//       googleLatitude: json['google_latitude'],
//       googleLongitude: json['google_longitude'],
//       description: json['description'],
//       categoryName: json['category_name'],
//       colorHex: json['color_hex'],
//       iconId: json['icon_Id'].toString(),
//       image: json['image'],
//     );
//   }
// }
// class Location {
//   final String id;
//   final String name;
//   final String googleLatitude;
//   final String googleLongitude;
//   final String description;
//   final String categoryName;
//   final String colorHex;
//   final String iconId;
//   final String image;

//   Location({
//     required this.id,
//     required this.name,
//     required this.googleLatitude,
//     required this.googleLongitude,
//     required this.description,
//     required this.categoryName,
//     required this.colorHex,
//     required this.iconId,
//     required this.image,
//   });

//   factory Location.fromJson(Map<String, dynamic> json) {
//     return Location(
//       id: json['Id'].toString(),
//       name: json['name'],
//       googleLatitude: json['google_latitude'],
//       googleLongitude: json['google_longitude'],
//       description: json['description'],
//       categoryName: json['category_name'],
//       colorHex: json['color_hex'],
//       iconId: json['icon_Id'].toString(),
//       image: json['image'],
//     );
//   }
// }

// class Category {
//   final String id;
//   final String name;
//   final String colorHex;
//   final String iconId;
//   final String image;
//   final String locationCount;

//   Category({
//     required this.id,
//     required this.name,
//     required this.colorHex,
//     required this.iconId,
//     required this.image,
//     required this.locationCount,
//   });

//   factory Category.fromJson(Map<String, dynamic> json) {
//     return Category(
//       id: json['Id'].toString(),
//       name: json['name'],
//       colorHex: json['color_hex'],
//       iconId: json['icon_Id'].toString(),
//       image: json['image'],
//       locationCount: json['location_count'].toString(),
//     );
//   }
// }
