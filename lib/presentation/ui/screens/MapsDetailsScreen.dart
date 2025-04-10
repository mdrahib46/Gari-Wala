import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:gariwala/data/model/car_models.dart' show Car;
import 'package:latlong2/latlong.dart';

class MapsDetailsScreen extends StatelessWidget {
  const MapsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Example car for demonstration. You can pass this dynamically as needed.
    final Car demoCar = Car(
      model: 'Toyota Corolla',
      distance: 120,
      fuelCapacity: 45, pricePerHour: 45,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(51, -0.09),
              initialZoom: 13,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: carDetailCard(demoCar),
          ),
        ],
      ),
    );
  }
}


// Widget carDetailCard() {
//   return SizedBox(
//     height: 350,
//     child: Stack(
//       children: [
//         Container(
//           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: Colors.black54,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(30),
//               topRight: Radius.circular(30),
//             ),
//             boxShadow: [
//               BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
//             ],
//           ),
//           child: Column(
//             children: [
//               SizedBox(height: 20),
//               Text(
//                 'car.model',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               Row(
//                 children: [
//                   Icon(Icons.directions_car, color: Colors.white, size: 16),
//                   SizedBox(width: 8),
//                   Text(
//                     '> {car.distance} km',
//                     style: TextStyle(color: Colors.white, fontSize: 14),
//                   ),
//                   SizedBox(width: 10),
//                   Icon(Icons.battery_full, color: Colors.white, size: 14),
//                   Text(
//                     'car.fuelCapacity',
//                     style: TextStyle(color: Colors.white, fontSize: 14),
//                   ),
//                   SizedBox(width: 10),
//
//                 ],
//               ),
//             ],
//           ),
//
//
//         ),
//       ],
//     ),
//
//   );
// }

Widget carDetailCard(Car car) {
  return Container(
    height: 350,
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    decoration: BoxDecoration(
      color: Colors.black54,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      boxShadow: [
        BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          car.model,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Icon(Icons.directions_car, color: Colors.white, size: 16),
            SizedBox(width: 8),
            Text(
              '${car.distance} km',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(width: 10),
            Icon(Icons.battery_full, color: Colors.white, size: 14),
            SizedBox(width: 5),
            Text(
              '${car.fuelCapacity} L',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ],
    ),
  );
}
