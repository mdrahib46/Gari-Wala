import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gariwala/data/data_sources/firebase_car_data_source.dart';
import 'package:gariwala/domain/repositiories/car_repositiories.dart';
import 'package:gariwala/domain/repositiories/car_repository_implement.dart';
import 'package:gariwala/domain/repositiories/get_cars.dart';
import 'package:gariwala/presentation/ui/controller/car_bloc.dart';
import 'package:get_it/get_it.dart';

// final GetIt getIt = GetIt.instance;

// void initialInjection() {
//   try {
//     getIt.registerLazySingleton<FirebaseFirestore>(
//       () => FirebaseFirestore.instance,
//     );
//     getIt.registerLazySingleton<FirebaseCarDataSource>(
//       () =>
//           FirebaseCarDataSource(firebaseFirestore: getIt<FirebaseFirestore>()),
//     );
//     getIt.registerLazySingleton<CarRepository>(
//       () => CarRepositoryImplement(getIt<FirebaseCarDataSource>()),
//     );
//
//     getIt.registerFactory(() => CarBloc(getCars: getIt<GetCars>()));
//   } catch (e) {
//     throw e.toString();
//   }
// }

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:get_it/get_it.dart';
// import 'package:rentapp/data/datasources/firebase_car_data_source.dart';
// import 'package:rentapp/data/repositories/car_repository_impl.dart';
// import 'package:rentapp/domain/repositories/car_repository.dart';
// import 'package:rentapp/domain/usecases/get_cars.dart';
// import 'package:rentapp/presentation/bloc/car_bloc.dart';

 final GetIt getIt = GetIt.instance;

void initInjection(){
  try{
    getIt.registerLazySingleton<FirebaseFirestore>(() => FirebaseFirestore.instance);
    getIt.registerLazySingleton<FirebaseCarDataSource>(
            () => FirebaseCarDataSource(firebaseFirestore: getIt<FirebaseFirestore>(),)
    );
    getIt.registerLazySingleton<CarRepository>(
            () => CarRepositoryImplement(getIt<FirebaseCarDataSource>())
    );
    getIt.registerLazySingleton<GetCars>(
            () => GetCars(getIt<CarRepository>())
    );
    getIt.registerFactory(() => CarBloc(getCars: getIt<GetCars>()));

  } catch (e){
    throw e;
  }
}
