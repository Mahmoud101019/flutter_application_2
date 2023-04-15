// ignore_for_file: file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:get/get.dart';

class Splash2Screen extends StatefulWidget {
  const Splash2Screen({super.key});

  @override
  State<Splash2Screen> createState() => _Splash2ScreenState();
}

class _Splash2ScreenState extends State<Splash2Screen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Get.offNamed(Routes.onboarding1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Image.asset(
          "assets/images/splash2.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}