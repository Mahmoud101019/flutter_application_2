// ignore_for_file: file_names, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/logic/controllers/main_controller.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final controller = Get.find<Maincontroller>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Obx(() {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          elevation: 0,
          leading: Image.asset(
            "assets/images/unisa white 2.png",
          ),
          title: controller.title[controller.currentIndex.value],
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex.value,
          backgroundColor: Colors.white,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
              activeIcon: Icon(
                Icons.home,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.messenger_outline_outlined),
              label: '',
              activeIcon: Icon(
                Icons.messenger_outline_outlined,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.double_arrow_outlined),
              label: '',
              activeIcon: Icon(
                Icons.double_arrow_outlined,
                color: Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded),
              label: '',
              activeIcon: Icon(
                Icons.settings_rounded,
                color: Colors.black,
              ),
            ),
          ],
          onTap: (index) {
            controller.currentIndex.value = index;
          },
        ),
        body: IndexedStack(
          index: controller.currentIndex.value,
          children: controller.tabs.value,
        ),
      );
    }));
  }
}
