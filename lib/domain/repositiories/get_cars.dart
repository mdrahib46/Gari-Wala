import 'package:gariwala/data/model/car_models.dart';
import 'package:gariwala/domain/repositiories/car_repositiories.dart';

class GetCars{
  final CarRepository carRepository;

  GetCars(this.carRepository);

  Future<List<Car>> callCar() async {
    return await carRepository.fetchCar();
  }

}