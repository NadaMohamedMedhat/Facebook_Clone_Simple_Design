import 'package:facebook_clone/Screens/home_screen.dart';
import 'package:facebook_clone/Screens/login_screen.dart';
import 'package:facebook_clone/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.route: (BuildContext) => const SplashScreen(),
        LoginScreen.route: (BuildContext) => const LoginScreen(),
        HomeScreen.route: (BuildContext) => HomeScreen(),
      },
      initialRoute: SplashScreen.route,
    );
  }
}
