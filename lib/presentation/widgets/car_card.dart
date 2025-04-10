import 'package:flutter/material.dart';
import 'package:gariwala/data/model/car_models.dart';
import 'package:gariwala/presentation/ui/screens/car_details_screen.dart';
import 'package:gariwala/utils/asset_path.dart';

class CarCard extends StatelessWidget {
  const CarCard({super.key, required this.car});

  final Car car;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CarDetailsScreen(car: car,)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(0xffF3F3F3),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5)],
        ),
        child: Column(
          children: [
            Image.asset(AssetPath.carImage, height: 120),
            Text(
              car.model,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
                letterSpacing: 0.8,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Row(
                  children: [
                    Image.asset(AssetPath.gpsImage),
                    Text(
                      '${car.distance.toStringAsFixed(2)} km',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                Row(
                  children: [
                    Image.asset(AssetPath.pumpImage),
                    Text(
                      '${car.fuelCapacity.toStringAsFixed(2)} ltr',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '\$${car.pricePerHour}',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
