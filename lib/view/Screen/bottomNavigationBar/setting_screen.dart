import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Setting Screen",
        style: TextStyle(fontSize: 20.sp),
      ),
    );
  }
}