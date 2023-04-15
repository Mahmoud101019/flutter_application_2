// ignore_for_file: file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:get/get.dart';

class Splash1Screen extends StatefulWidget {
  const Splash1Screen({super.key});

  @override
  State<Splash1Screen> createState() => _Splash1ScreenState();
}

class _Splash1ScreenState extends State<Splash1Screen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
      () => Get.offNamed(Routes.splash2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Image.asset(
          "assets/images/splash.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}