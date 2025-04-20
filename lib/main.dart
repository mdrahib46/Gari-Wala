import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:gariwala/injection_container.dart';
import 'firebase_options.dart';
import 'app/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  initialInjection();
  runApp(const GariWala());
}


