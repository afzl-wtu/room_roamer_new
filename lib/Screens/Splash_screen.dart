import 'package:flutter/material.dart';
import 'dart:async';

import 'package:room_roamer_new/Screens/Home_Screen.dart';
import 'package:room_roamer_new/utils/AppColors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 6),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const HomeScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white_color,
      child: Image.asset('Assets/images/logo.png'),
    );
  }
}
