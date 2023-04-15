// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_uni_app/view/Screen/bottomNavigationBar/Home_scree.dart';
import 'package:flutter_uni_app/view/Screen/bottomNavigationBar/goto_screen.dart';
import 'package:flutter_uni_app/view/Screen/bottomNavigationBar/messege_scree.dart';
import 'package:flutter_uni_app/view/Screen/bottomNavigationBar/setting_screen.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Maincontroller extends GetxController {
  RxInt currentIndex = 0.obs;

  final tabs = [
    HomeScreen(),
    MessegeScree(),
    GotoScreen(),
    SettingScreen(),
  ].obs;

  final title = [
    TextUtils(
        fontSize: 15.sp,
        fontWeight: FontWeight.bold,
        text: "Uni Smart Admission",
        color: Colors.white,
        underLine: TextDecoration.none),
    TextUtils(
        fontSize: 15.sp,
        fontWeight: FontWeight.bold,
        text: "Messege",
        color: Colors.white,
        underLine: TextDecoration.none),
    TextUtils(
        fontSize: 15.sp,
        fontWeight: FontWeight.bold,
        text: "Go to",
        color: Colors.white,
        underLine: TextDecoration.none),
    TextUtils(
        fontSize: 15.sp,
        fontWeight: FontWeight.bold,
        text: "Settings",
        color: Colors.white,
        underLine: TextDecoration.none),
  ].obs;
}