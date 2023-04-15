// ignore_for_file: file_names, non_constant_identifier_names, prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:sizer/sizer.dart';

class BueScreen extends StatefulWidget {
  const BueScreen({super.key});

  @override
  State<BueScreen> createState() => _BueScreenState();
}

class _BueScreenState extends State<BueScreen> {
  List<Map> BueSlider = [
    {"id": 1, "ImagePath": 'assets/images/download.png'},
    {"id": 2, "ImagePath": 'assets/images/download1.png'},
    {"id": 3, "ImagePath": 'assets/images/download2.png'},
    {"id": 4, "ImagePath": 'assets/images/download3.png'},
    {"id": 5, "ImagePath": 'assets/images/download4.png'},
  ];
  final CarouselController carouselController = CarouselController();
  int Curntindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xf4557e9d),
        ),
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
                Image.asset(
                  "assets/images/unisa white 3.png",
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Stack(
                  children: [
                    CarouselSlider(
                      items: BueSlider.map((imageUrl) {
                        return Image.asset(
                          imageUrl['ImagePath'],
                          fit: BoxFit.cover,
                          width: double.infinity,
                        );
                      }).toList(),
                      options: CarouselOptions(
                        scrollPhysics: BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            Curntindex = index;
                          });
                        },
                        // autoPlayInterval: Duration(seconds: 3),
                        // autoPlayAnimationDuration: Duration(milliseconds: 800),
                        // autoPlayCurve: Curves.fastOutSlowIn,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                // SizedBox(
                //   width: double.infinity.w,
                //   child: Image.asset(
                //     "assets/images/Ubue.png",
                //     fit: BoxFit.cover,
                //   ),
                // ),
                TextUtils(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w900,
                  text: "Welcome to",
                  underLine: TextDecoration.none,
                ),
                TextUtils(
                  color: textcolor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w900,
                  text: "British University In Egypt",
                  underLine: TextDecoration.none,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: TextUtils(
                    color: Colors.black,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                    text:
                        "The British University in Egypt aims to spread the spirit of challenge to the youth of Egypt by arming them with extraordinary knowledge and creations of thought in different fields. The British University students and alumni affirmed their scientific excellence by winning many awards and success stories locally and internationally. The British University in Egypt welcomes students and researchers by incubating their projects and ideas and works to develop them in the BUE Science and Innovation Park.",
                    underLine: TextDecoration.none,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/f.png",
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(1)),
                      child: Center(
                        child: TextUtils(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            text: "Art&Desing",
                            color: Colors.white,
                            underLine: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/f1.png",
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(1)),
                      child: Center(
                        child: TextUtils(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            text: "Facuity of informatics &Computer science",
                            color: Colors.white,
                            underLine: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/f2.png",
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(1)),
                      child: Center(
                        child: TextUtils(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            text: " engineering",
                            color: Colors.white,
                            underLine: TextDecoration.none),
                      ),
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
