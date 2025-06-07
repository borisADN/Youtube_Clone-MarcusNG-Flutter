import 'dart:async';

import 'package:application/screens/nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
    @override
  void initState() {
    super.initState();
    loadAnimation();
  }

  Future<Timer> loadAnimation() async {
  return Timer(
    const Duration(seconds:3),
   onLoaded
  );

  
  
}

  onLoaded() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) =>  NavScreen(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset('assets/animations/animation.json', repeat: false),
      ),
    );
  }
}
