import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GotoScreen extends StatelessWidget {
  const GotoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Go Screen",
      style: TextStyle(
        fontSize: 20.sp
      ),),
    );
  }
}