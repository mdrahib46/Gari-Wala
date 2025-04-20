import 'package:gariwala/data/data_sources/firebase_car_data_source.dart';
import 'package:gariwala/data/model/car_models.dart';
import 'package:gariwala/domain/repositiories/car_repositiories.dart';

class CarRepositoryImplement implements CarRepository{
  final FirebaseCarDataSource dataSource;
  CarRepositoryImplement(this.dataSource);
  Future<List<Car>> fetchCar() {
   return dataSource.getCars();
  }
}

