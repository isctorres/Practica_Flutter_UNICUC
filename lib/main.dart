import 'package:flutter/material.dart';
import 'package:practica2/screens/movies_screen.dart';
import 'package:practica2/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'/movies': (BuildContext) => MoviesScreen()},
      home: SplashScreen(),
    );
  }
}
