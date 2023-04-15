// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Utiltes/my_string.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/logic/controllers/auth_controller.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_text_from_field.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ForgetpasswordScreen extends StatelessWidget {
  ForgetpasswordScreen({super.key});

  final Formkey = GlobalKey<FormState>();
  final TextEditingController EmailController = TextEditingController();

    final controller = Get.find<Authcontroller>();


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: TextUtils(
            color: textcolor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w900,
            text: "Forget Password",
            underLine: TextDecoration.none,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: mainColor,
                  size: 25,
                )),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: Formkey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                  child: TextUtils(
                    color: textcolor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    text:
                        "if you want to recover your account then please provide your email ID below..",
                    underLine: TextDecoration.none,
                  ),
                ),
                Image.asset(
                  "assets/images/forget.png",
                  height: 55.h,
                  width: 100.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: AuthTextFromField(
                    controller: EmailController,
                    obscureText: false,
                    validator: (value) {
                      if (!RegExp(validationEmail).hasMatch(value)) {
                        return "inValed Mail";
                      } else {
                        return null;
                      }
                    },
                    prefixIcon: const Icon(
                      Icons.email,
                      size: 30,
                      color: textcolor,
                    ),
                    suffixIcon: const Text(""),
                    hintText: "Email",
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                AuthButton(
                  onPressed: () {},
                  text: "SEND",
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
