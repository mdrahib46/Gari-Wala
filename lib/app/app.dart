import 'package:flutter/material.dart';
import 'package:gariwala/features/Home/ui/screens/onboarding_page.dart';

class GariWala extends StatelessWidget {
  const GariWala({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(color: Colors.black54, fontSize: 32, fontWeight: FontWeight.w600),
          titleMedium: TextStyle(),

          bodyMedium: TextStyle(fontSize: 16, color: Colors.grey),
        ),


        elevatedButtonTheme: _elevatedButtonThemeData(),
      ),

      home: OnboardingPage(),
    );
  }

  ElevatedButtonThemeData _elevatedButtonThemeData() {
    return ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 2,
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          fixedSize: Size.fromWidth(double.maxFinite),
        ),
      );
  }
}
