// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, file_names

import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/my_string.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/logic/controllers/auth_controller.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_text_from_field.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final Formkey = GlobalKey<FormState>();
  final TextEditingController NameController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();

  final controller = Get.find<Authcontroller>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Image.asset(
                "assets/images/12-removebg-preview.png",
                height: 40.h,
                width: 150.w,
              )),
              TextUtils(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  text: "log in now!",
                  color: textcolor,
                  underLine: TextDecoration.none),
              TextUtils(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.bold,
                  text: "please login to continue using our app",
                  color: textcolor2,
                  underLine: TextDecoration.none),
              SizedBox(height: 3.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Form(
                  key: Formkey,
                  child: Column(children: [
                    SizedBox(height: 3.h),
                    AuthTextFromField(
                        controller: EmailController,
                        obscureText: false,
                        validator: (value) {
                          if (!RegExp(validationEmail).hasMatch(value)) {
                            return "invaled Email";
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: const Icon(
                          Icons.email,
                          size: 35,
                          color: textcolor,
                        ),
                        suffixIcon: const Text(''),
                        hintText: "  Email"),
                    SizedBox(height: 3.h),
                    GetBuilder<Authcontroller>(builder: (_) {
                      return AuthTextFromField(
                          controller: PasswordController,
                          obscureText: controller.isvisibility ? false : true,
                          validator: (value) {
                            if (value.toString().length < 6) {
                              return 'Invaled Passworrd';
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: const Icon(
                            Icons.lock,
                            size: 35,
                            color: textcolor,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              controller.visibility();
                            },
                            icon: controller.isvisibility
                                ? Icon(
                                    Icons.visibility,
                                    size: 25,
                                    color: Colors.black,
                                  )
                                : Icon(
                                    Icons.visibility_off,
                                    color: Colors.grey.shade600,
                                  ),
                          ),
                          hintText: "  Password");
                    }),
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed(Routes.forgetpasswordScreen);
                        },
                        child: TextUtils(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w900,
                          text: "forgot password? ",
                          color: textcolor,
                          underLine: TextDecoration.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    GetBuilder<Authcontroller>(builder: (_) {
                      return AuthButton(
                          text: "Login",
                          onPressed: () {
                            if (Formkey.currentState!.validate()) {
                              String Emil = EmailController.text.trim();
                              String pass = PasswordController.text.trim();
                              controller.loginfirebase(
                                  email: Emil, password: pass);
                            }
                          });
                    }),
                    SizedBox(height: 5.h),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                            endIndent: 10,
                            height: 2.5.h,
                            indent: 10,
                            thickness: 2,
                          ),
                        ),
                        TextUtils(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w900,
                          text: "      Or Log In with Account      ",
                          color: Colors.black,
                          underLine: TextDecoration.none,
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.black,
                            endIndent: 10,
                            height: 2.5.h,
                            indent: 10,
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.w, color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/8.png",
                                  width: 8.w,
                                  height: 6.h,
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: TextUtils(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold,
                                    text: "Facebook",
                                    color: Colors.black,
                                    underLine: TextDecoration.none,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.w, color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/7.png",
                                  width: 8.w,
                                  height: 6.h,
                                ),
                                SizedBox(
                                  width: 0.5.w,
                                ),
                                GetBuilder<Authcontroller>(builder: (_) {
                                  return TextButton(
                                    onPressed: () {},
                                    child: InkWell(
                                      onTap: () {
                                        controller.googlesignupApp();
                                      },
                                      child: TextUtils(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold,
                                        text: "Google",
                                        color: Colors.black,
                                        underLine: TextDecoration.none,
                                      ),
                                    ),
                                  );
                                })
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    )
                  ]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextUtils(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      text: "don’t have an account?  ",
                      color: textcolor2,
                      underLine: TextDecoration.none),
                  TextButton(
                      onPressed: () {
                        Get.offNamed(Routes.signupScreen);
                      },
                      child: TextUtils(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          text: "sign up ",
                          color: textcolor,
                          underLine: TextDecoration.underline))
                ],
              ),
              SizedBox(
                height: 2.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
