import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gariwala/data/model/car_models.dart';

class FirebaseCarDataSource {
  final FirebaseFirestore firebaseFirestore;

  FirebaseCarDataSource({required this.firebaseFirestore});

  Future<List<Car>> getCars() async {
    var snapShot = await firebaseFirestore.collection('cars').get();
    return snapShot.docs.map((doc) => Car.fromMap(doc.data())).toList();
  }
}


