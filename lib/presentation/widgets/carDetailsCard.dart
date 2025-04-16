import 'package:flutter/material.dart';
import 'package:gariwala/data/model/car_models.dart';
import 'package:gariwala/presentation/widgets/car_features_inDetails.dart';
import 'package:gariwala/utils/asset_path.dart';


Widget carDetailCard({required Car car}) {
  return Stack(
    children: [
      Container(
        height: 380,
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
      ),
      Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
          ),
          child: CarFeaturesInDetails(car: car,),
        ),
      ),
      Positioned(
        top: 50,
        right: 20,
        child: Image(image: AssetImage(AssetPath.white_car)),
      ),
    ],
  );
}