import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gariwala/presentation/ui/controller/car_bloc.dart';
import 'package:gariwala/presentation/ui/controller/car_state.dart';
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
        child: BlocBuilder<CarBloc, CarState>(builder: (context, state) {
          if (state is CarLoading) {
            return Center(child: CircularProgressIndicator(),);
          }
          else if (state is CarLoaded) {
            return ListView.builder(itemCount: state.cars.length,
              itemBuilder: (context, index) {
                  return CarCard(car: state.cars[index],);
              },);
          }else if(state is CarError){
            return Center(child: Text('Error : ${state.errorMessage}'),);
          }
          return Container();
        },),
      ),
    );
  }
}


// ListView.builder(
// itemCount: CarsList.cars.length,
// itemBuilder: (context, index) {
// return CarCard(car: CarsList.cars[index]);
// },
// ),