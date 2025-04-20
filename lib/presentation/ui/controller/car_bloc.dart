import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gariwala/data/model/car_models.dart';
import 'package:gariwala/domain/repositiories/get_cars.dart';
import 'package:gariwala/presentation/ui/controller/car_event.dart';
import 'package:gariwala/presentation/ui/controller/car_state.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final GetCars getCars;

  CarBloc({required this.getCars}) : super(CarLoading()) {
    on<LoadCars>((event, emit) async {
      emit(CarLoading());
      try {
        final List<Car> cars = (await getCars) as List<Car>; // getCars must implement call()
        emit(CarLoaded(cars));
      } catch (e) {
        emit(CarError(e.toString()));
      }
    });
  }
}
