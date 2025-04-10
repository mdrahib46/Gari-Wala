import 'package:flutter/material.dart';
import 'package:gariwala/presentation/ui/screens/MapsDetailsScreen.dart';
import 'package:gariwala/presentation/ui/screens/car_details_screen.dart';
import 'package:gariwala/presentation/ui/screens/onboarding_screen.dart';

class GariWala extends StatelessWidget {
  const GariWala({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: _textThemeData(),
        appBarTheme: _appBarThemeData(),
        elevatedButtonTheme: _elevatedButtonThemeData(),
      ),

      home: MapsDetailsScreen(),
    );
  }

  TextTheme _textThemeData() {
    return TextTheme(
      titleLarge: TextStyle(
        color: Colors.black54,
        fontSize: 32,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(),

      bodyMedium: TextStyle(fontSize: 16, color: Colors.grey),
    );
  }

  AppBarTheme _appBarThemeData() {
    return AppBarTheme(
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w400,
        color: Colors.black,
        fontSize: 24,
        letterSpacing: 0.8,
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 1.0,
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
