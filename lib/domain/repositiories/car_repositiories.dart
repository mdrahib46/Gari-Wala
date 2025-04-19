


import 'package:gariwala/data/model/car_models.dart';

abstract class CarRepository{

  Future<List<Car>> fetchCar();

}