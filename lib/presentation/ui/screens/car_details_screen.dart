import 'package:flutter/material.dart';
import 'package:gariwala/presentation/ui/screens/car_list_screen.dart';
import 'package:gariwala/presentation/widgets/car_card.dart';
import 'package:gariwala/utils/asset_path.dart';
import 'package:gariwala/utils/cars.dart';

class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            const SizedBox(width: 8),
            Text('Information'),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CarCard(car: CarsList.cars[1]),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF3F3F3),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(AssetPath.userProfile),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Jhon Doe',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            Text(
                              '\$4,253',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                  Expanded(
                    child: Container(
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          image: AssetImage(AssetPath.mapImage),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
