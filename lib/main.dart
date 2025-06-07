import 'package:application/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'YouTube Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Baloo',
        brightness: Brightness.dark,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(color: Colors.white),
          selectedItemColor: Colors.white,
          unselectedIconTheme: IconThemeData(color: Colors.white54),
          unselectedItemColor: Colors.white54,
        ),
      ),
      home: SplashScreen(),
    );
  }
}
