import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gariwala/injection_container.dart';
import 'package:gariwala/presentation/ui/controller/car_bloc.dart';
import 'package:gariwala/presentation/ui/controller/car_event.dart';
import 'package:gariwala/presentation/ui/screens/onboarding_screen.dart';

class GariWala extends StatelessWidget {
  const GariWala({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=> getIt<CarBloc>()..add(LoadCars()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: _textThemeData(),
          appBarTheme: _appBarThemeData(),
          elevatedButtonTheme: _elevatedButtonThemeData(),
        ),
        home: OnboardingScreen(),
      ),
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




