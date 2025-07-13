import 'package:flutter/material.dart';
import 'views/splash/splash_screen.dart';

void main() {
  runApp(const BeautyApp());
}

class BeautyApp extends StatelessWidget {
  const BeautyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beauty App',
      theme: ThemeData(
        primaryColor: Color(0xFFE53935), // bu yerda bevosita rang ishlatilgan
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto', // istasangiz, shrift nomini o'zgartirasiz
      ),
      home: const SplashScreen(),
    );
  }
}

