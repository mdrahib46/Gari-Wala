import 'package:flutter/material.dart';
import 'package:gariwala/presentation/widgets/car_card.dart';
import 'package:gariwala/utils/cars.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose your car"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: CarsList.cars.length,
          itemBuilder: (context, index) {
            return CarCard(car: CarsList.cars[index]);
          },
        ),
      ),
    );
  }
}
