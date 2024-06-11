import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:eye_planner/main.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Column(
      children: [
        Center(
          child: SizedBox(
            height: 500,
            width: 500,
            child: Lottie.asset('assets/Lottie/anim1.json'),
          )
        ),
      ],
    ), nextScreen: const MyHomePage(),
    splashIconSize: 500,
    animationDuration: const Duration(seconds: 7),
    backgroundColor: const Color(0xFF3C5375), 
    );
  }
}