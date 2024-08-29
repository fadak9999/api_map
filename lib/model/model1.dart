// // ignore_for_file: file_names

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
//       id: json['Id'],
//       name: json['name'],
//       colorHex: json['color_hex'],
//       iconId: json['icon_Id'],
//       image: json['image'],
//       locationCount: json['location_count'],
//     );
//   }
//   String get fullImageUrl {
//     return 'https://alataba.org${image.replaceFirst('..', '')}';
//   }
// }