import 'package:flutter/material.dart';
import 'package:gariwala/data/model/car_models.dart';
import 'package:gariwala/presentation/widgets/features_icons.dart';

class CarFeaturesInDetails extends StatelessWidget {
  const CarFeaturesInDetails({
    super.key, required this.car,
  });

  final Car car;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Features",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        featuresIcons(),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$${car.pricePerHour}/Day',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Spacer(),
            SizedBox(
              width: 120,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: Text(
                  "Book Now",
                  style: TextStyle(color: Colors.white, wordSpacing: 0.9),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}