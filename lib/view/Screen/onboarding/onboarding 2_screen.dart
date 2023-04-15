// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          elevation: 0,
          leading: Image.asset(
            "assets/images/unisa white 2.png",
          ),
          title: TextUtils(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              text: "Uni Smart Admission",
              color: Colors.white,
              underLine: TextDecoration.none),
          centerTitle: true,
          actions: [
            Image.asset(
              "assets/images/Group.png",
              width: 12.w,
              height: 12.h,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
            child: Column(
              children: [
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Image.asset(
                //       "assets/images/logo.png",
                //       width: 20.w,
                //     ),
                //     TextUtils(
                //       fontSize: 18.sp,
                //       fontWeight: FontWeight.bold,
                //       text: "Uni.S.A",
                //       color: textcolor,
                //       underLine: TextDecoration.none,
                //     )
                //   ],
                // ),
                Image.asset(
                  "assets/images/photo-1523050854058-8df90110c9f1.png",
                  // width: 60.w,
                  height: 38.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.5.h),
                  child: RichText(
                      text: TextSpan(
                          text: 'Get the best choice for ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.sp,
                          ),
                          children: [
                        TextSpan(
                            text: "the university you've ",
                            style: TextStyle(
                              color: const Color(0xFF3366FF),
                              fontSize: 30.sp,
                            )),
                        TextSpan(
                          text: " always dreamed of ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.sp,
                          ),
                        ),
                      ])),
                ),
                SizedBox(
                  height: 3.h,
                ),
                AuthButton(
                    text: "Get Start",
                    onPressed: () {
                      Get.offNamed(Routes.signupScreen);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
