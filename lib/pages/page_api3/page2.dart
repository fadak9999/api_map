// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:map/Api/Api3.dart';
// import 'package:map/model/model22/model_3.dart';
// import 'package:map/model/model22/model_32.dart';


// class LocationListScreen extends StatefulWidget {
//   final Category category;

//   const LocationListScreen({required this.category, Key? key}) : super(key: key);

//   @override
//   _LocationListScreenState createState() => _LocationListScreenState();
// }

// class _LocationListScreenState extends State<LocationListScreen> {
//   late Future<List<Location>> futureLocations;
//   late GoogleMapController mapController;

//   @override
//   void initState() {
//     super.initState();
//     futureLocations = ApiService().fetchLocations(widget.category.id);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('${widget.category.name} Locations'),
//       ),
//       body: FutureBuilder<List<Location>>(
//         future: futureLocations,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return const Center(child: Text('No locations found.'));
//           } else {
//             final locations = snapshot.data!;
//             return GoogleMap(
//               initialCameraPosition: CameraPosition(
//                 target: LatLng(
//                   double.parse(locations[0].googleLatitude),
//                   double.parse(locations[0].googleLongitude),
//                 ),
//                 zoom: 14.0,
//               ),
//               markers: _buildMarkers(locations),
//             );
//           }
//         },
//       ),
//     );
//   }

//   Set<Marker> _buildMarkers(List<Location> locations) {
//     final Set<Marker> markers = {};
//     for (var location in locations) {
//       markers.add(
//         Marker(
//           markerId: MarkerId(location.id),
//           position: LatLng(
//             double.parse(location.googleLatitude),
//             double.parse(location.googleLongitude),
//           ),
//           infoWindow: InfoWindow(
//             title: location.name,
//             snippet: location.description,
//           ),
//         ),
//       );
//     }
//     return markers;
//   }
// }
//!
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:map/Api/Api3.dart';
// import 'package:map/model/model22/model_3.dart';
// import 'package:map/model/model22/model_32.dart';


// class LocationListScreen extends StatefulWidget {
//   final Category category;

//   const LocationListScreen({required this.category});

//   @override
//   _LocationListScreenState createState() => _LocationListScreenState();
// }

// class _LocationListScreenState extends State<LocationListScreen> {
//   late Future<List<Location>> futureLocations;
//   late GoogleMapController mapController;

//   @override
//   void initState() {
//     super.initState();
//     futureLocations = ApiService().fetchLocations(widget.category.id);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text('${widget.category.name} Locations'),
//       ),
//       body: FutureBuilder<List<Location>>(
//         future: futureLocations,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return const Center(child: Text('No locations found.'));
//           } else {
//             final locations = snapshot.data!;
//             return GoogleMap(
//               initialCameraPosition: CameraPosition(
//                 target: LatLng(
//                   double.parse(locations[0].googleLatitude),
//                   double.parse(locations[0].googleLongitude),
//                 ),
//                 zoom: 14.0,
//               ),
//               markers: _buildMarkers(locations),
//               onMapCreated: (GoogleMapController controller) {
//                 mapController = controller;
//               },
//             );
//           }
//         },
//       ),
//     );
//   }

//   Set<Marker> _buildMarkers(List<Location> locations) {
//     final Set<Marker> markers = {};
//     for (var location in locations) {
//       markers.add(
//         Marker(
//           markerId: MarkerId(location.id),
//           position: LatLng(
//             double.parse(location.googleLatitude),
//             double.parse(location.googleLongitude),
//           ),
//           infoWindow: InfoWindow(
//             title: location.name,
//             snippet: location.description,
//           ),
//         ),
//       );
//     }
//     return markers;
//   }
// }
