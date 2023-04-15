// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:sizer/sizer.dart';

class CardItems extends StatelessWidget {
  const CardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.w),
      child: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset("assets/images/11.png"),
                  Container(
                    color: Colors.white,
                    child: TextUtils(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        text: "Admition",
                        color: textcolor,
                        underLine: TextDecoration.none),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Image.asset("assets/images/13.png"),
                  ),
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        TextUtils(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            text: "transportation",
                            color: textcolor,
                            underLine: TextDecoration.none),
                        TextUtils(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            text: "guide",
                            color: textcolor,
                            underLine: TextDecoration.none),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset("assets/images/14.png"),
                  Container(
                    color: Colors.white,
                    child: TextUtils(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        text: "file upload",
                        color: textcolor,
                        underLine: TextDecoration.none),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset("assets/images/10.png"),
                  Container(
                    color: Colors.white,
                    child: TextUtils(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        text: " payment",
                        color: textcolor,
                        underLine: TextDecoration.none),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset("assets/images/15.png"),
                  Container(
                    color: Colors.white,
                    child: TextUtils(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        text: " QR-Code",
                        color: textcolor,
                        underLine: TextDecoration.none),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset("assets/images/12.png"),
                  Container(
                    color: Colors.white,
                    child: TextUtils(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        text: "online exams",
                        color: textcolor,
                        underLine: TextDecoration.none),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 7.h,
          ),
          SizedBox(
            height: 7.h,
          ),
        ],
      ),
    );
  }
}
