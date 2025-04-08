import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'app/app.dart';

void main() async{
  // await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,);
  // await Firebase

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const GariWala());
}


