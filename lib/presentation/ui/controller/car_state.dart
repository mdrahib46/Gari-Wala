import 'package:gariwala/data/model/car_models.dart';

abstract class CarState {}

class CarLoading extends CarState {}

class CarLoaded extends CarState {
  final List<Car> cars;

  CarLoaded(this.cars);
}

class CarError extends CarState {
  final String errorMessage;

  CarError(this.errorMessage);
}
