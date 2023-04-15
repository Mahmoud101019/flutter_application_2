// ignore_for_file: file_names, unused_import, prefer_const_constructors, non_constant_identifier_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/home/Searchform.dart';
import 'package:flutter_uni_app/view/widget/home/carditem_scree.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map> imageslider = [
    {"id": 1, "ImagePath": 'assets/images/Alexandria-University-Egypt 1.png'},
    {"id": 2, "ImagePath": 'assets/images/univrsty.png'},
  ];
  List<Map> imageslider2 = [
    {
      "id": 3,
      "ImagePath": 'assets/images/michael-marsh-U0dBV_QeiYk-unsplash 1.png'
    },
    {"id": 4, "ImagePath": 'assets/images/institutes.png'}
  ];

  final CarouselController carouselController = CarouselController();
  int Curntindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Container(
              //   width: double.infinity.w,
              //   height: 20.h,
              //   decoration: BoxDecoration(
              //       color: mainColor,
              //       borderRadius: BorderRadius.only(
              //           bottomLeft: Radius.circular(8.w),
              //           bottomRight: Radius.circular(8.w))),
              //   child: Column(
              //     children: [
              //       Padding(
              //         padding:
              //             EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              //         child: Align(
              //           alignment: Alignment.centerLeft,
              //           child: TextUtils(
              //               fontSize: 15.sp,
              //               fontWeight: FontWeight.bold,
              //               text: "Search",
              //               color: Colors.white,
              //               underLine: TextDecoration.none),
              //         ),
              //       ),
              //       SizedBox(
              //         height: 1.h,
              //       ),
              //       // const SearchformScreen(),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 5.h,
              ),
              Align(
                alignment: Alignment.center,
                child: TextUtils(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    text: "Welcome to universities and institutes.",
                    color: Colors.black,
                    underLine: TextDecoration.underline),
              ),
              SizedBox(
                height: 3.h,
              ),
              Stack(
                children: [
                  CarouselSlider(
                    items: imageslider.map((imageUrl) {
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
              AuthButton(
                  text: "University",
                  onPressed: () {
                    Get.toNamed(Routes.personalInformation);
                  }),
              // Image.asset("assets/images/Alexandria-University-Egypt 1.png"),
              // Container(
              //   height: 9.h,
              //   width: 60.w,
              //   decoration: BoxDecoration(
              //       color: Colors.grey.withOpacity(0.5),
              //       borderRadius: BorderRadius.circular(1)),
              //   child: Center(
              //     child: TextUtils(
              //         fontSize: 25.sp,
              //         fontWeight: FontWeight.bold,
              //         text: "university",
              //         color: Colors.white,
              //         underLine: TextDecoration.none),
              //   ),
              // ),
              SizedBox(
                height: 5.h,
              ),
              Stack(
                children: [
                  CarouselSlider(
                    items: imageslider2.map((imageUrl) {
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
              // Image.asset(
              //     "assets/images/michael-marsh-U0dBV_QeiYk-unsplash 1.png"),
              AuthButton(
                  text: "Institutes",
                  onPressed: () {
                    Get.toNamed(Routes.personalInformation);
                  }),
              // Container(
              //   height: 9.h,
              //   width: 60.w,
              //   decoration: BoxDecoration(
              //       color: Colors.grey.withOpacity(0.5),
              //       borderRadius: BorderRadius.circular(1)),
              //   child: Center(
              //     child: TextUtils(
              //         fontSize: 25.sp,
              //         fontWeight: FontWeight.bold,
              //         text: "institutes",
              //         color: Colors.white,
              //         underLine: TextDecoration.none),
              //   ),
              // ),
              SizedBox(
                height: 5.h,
              ),
              // const CardItems()
            ],
          ),
        ),
      ),
    );
  }
}