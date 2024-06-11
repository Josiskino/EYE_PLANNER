import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:eye_planner/login_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  late Future<void> _loadingFuture;

  @override
  void initState() {
    super.initState();
    _loadingFuture = _preloadLottie();
  }

  Future<void> _preloadLottie() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulez un temps de chargement
    await DefaultAssetBundle.of(context).loadString('assets/Lottie/anim1.json');
  }

 @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _loadingFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AnimatedSplashScreen(
            splash: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Centrer le contenu verticalement
              children: [
                Center(
                  child: SizedBox(
                    height: 650,
                    width: 650,
                    child: Lottie.asset('assets/Lottie/anim1.json'),
                  ),
                ),
              ],
            ),
            nextScreen: const LoginPage(),
            splashIconSize: 650, // Correspond à la taille du SizedBox
            animationDuration: const Duration(milliseconds: 3544), // Correspond à la durée de votre animation
            backgroundColor: const Color(0xFF3C5375),
          );
        } else {
          return const Scaffold(
            backgroundColor: Color(0xFF3C5375),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}