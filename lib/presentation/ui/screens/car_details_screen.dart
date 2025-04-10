import 'package:flutter/material.dart';
import 'package:gariwala/data/model/car_models.dart';
import 'package:gariwala/presentation/widgets/car_card.dart';
import 'package:gariwala/presentation/widgets/more_card.dart';
import 'package:gariwala/utils/asset_path.dart';



class CarDetailsScreen extends StatelessWidget {
  const CarDetailsScreen({super.key, required this.car});

  final Car car;

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarCard(
                car: Car(
                  model: car.model,
                  distance: car.distance,
                  fuelCapacity: car.fuelCapacity,
                  pricePerHour: car.pricePerHour,
                ),
              ),

              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(0xffF3F3F3),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                AssetPath.userProfile,
                              ),
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
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    MoreCard(
                      car:  Car(
                        model: "${car.model} - 1",
                        distance: car.distance+100,
                        fuelCapacity: car.fuelCapacity,
                        pricePerHour: car.pricePerHour+10,
                      ),
                    ),
                    const SizedBox(height: 4),
                    MoreCard(
                      car:  Car(
                        model: '${car.model} - 2',
                        distance: car.distance+200,
                        fuelCapacity: car.fuelCapacity,
                        pricePerHour: car.pricePerHour+20,
                      ),
                    ),
                    const SizedBox(height: 4),
                    MoreCard(
                      car:  Car(
                        model: '${car.model} - 3',
                        distance: car.distance+350,
                        fuelCapacity: car.fuelCapacity,
                        pricePerHour: car.pricePerHour+30,
                      ),
                    ),

                    // ListView.builder(itemBuilder: (context, index){
                    //   return MoreCard(car: CarsList.cars[index]);
                    // }, itemCount: CarsList.cars.length,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
