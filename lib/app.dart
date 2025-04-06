import 'package:flutter/material.dart';
import 'package:gariwala/features/Home/ui/screens/home_screen.dart';

class GariWala extends StatelessWidget {
  const GariWala({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
