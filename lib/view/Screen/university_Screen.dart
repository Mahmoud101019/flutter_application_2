// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class UniversityScreen extends StatelessWidget {
  const UniversityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity.w,
          height: double.infinity.h,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,
                  colors: [
                Color(0xf4557e9d),
                Color(0xf4557e9d),
              ])),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Image.asset(
                  "assets/images/unisa white 3.png",
                  fit: BoxFit.cover,
                ),
                TextUtils(
                  color: Colors.white,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                  text: "University",
                  underLine: TextDecoration.none,
                ),
                SizedBox(
                  height: 5.h,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.bueScreen);
                      },
                      child: Container(
                        height: 12.h,
                        width: 80.w,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 254, 253, 253)
                                .withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10)),
                        child:
                            Center(child: Image.asset("assets/images/Bue.png")),
                      ),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    TextUtils(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900,
                      text: "The British University ",
                      underLine: TextDecoration.none,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Column(
                  children: [
                    Container(
                      height: 12.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 253, 253)
                              .withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)),
                      child:
                          Center(child: Image.asset("assets/images/Bus.png")),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    TextUtils(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900,
                      text: "Badr University  ",
                      underLine: TextDecoration.none,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Column(
                  children: [
                    Container(
                      height: 12.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 253, 253)
                              .withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)),
                      child:
                          Center(child: Image.asset("assets/images/Auc.png")),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    TextUtils(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900,
                      text: "The American University ",
                      underLine: TextDecoration.none,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Column(
                  children: [
                    Container(
                      height: 12.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 253, 253)
                              .withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)),
                      child:
                          Center(child: Image.asset("assets/images/miu.png")),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    TextUtils(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900,
                      text: "Misr International University ",
                      underLine: TextDecoration.none,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Column(
                  children: [
                    Container(
                      height: 12.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 253, 253)
                              .withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10)),
                      child:
                          Center(child: Image.asset("assets/images/Acu.png")),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    TextUtils(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w900,
                      text: "Ahram Canadian University ",
                      underLine: TextDecoration.none,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
