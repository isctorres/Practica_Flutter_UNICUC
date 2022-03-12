import 'package:flutter/material.dart';
import 'package:practica2/screens/dashboar_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: DashboardScreen(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "images/logocuc.png",
      text: "Bienvenidos",
      textType: TextType.ScaleAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );
  }
}
