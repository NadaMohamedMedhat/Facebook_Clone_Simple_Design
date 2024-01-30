import 'dart:async';

import 'package:facebook_clone/Screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../ReusableComponents/colors.dart';

class SplashScreen extends StatefulWidget {
  static const String route='SplashScreen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
          () => Navigator.pushReplacementNamed(context, LoginScreen.route),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/facebook-logo.png',),
          ),
        ),
      ),
    );
  }
}
