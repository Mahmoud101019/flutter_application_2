// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

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

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});

  final Formkey = GlobalKey<FormState>();
  final TextEditingController NameController = TextEditingController();
  final TextEditingController EmailController = TextEditingController();
  final TextEditingController PasswordController = TextEditingController();
  final TextEditingController ConfirmPassword = TextEditingController();

  final controller = Get.find<Authcontroller>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Image.asset("assets/images/logo.png")),
              SizedBox(height: 2.h),
              TextUtils(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  text: "HI!",
                  color: textcolor,
                  underLine: TextDecoration.none),
              TextUtils(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  text: "create a new account!",
                  color: textcolor2,
                  underLine: TextDecoration.none),
              SizedBox(height: 3.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Form(
                  key: Formkey,
                  child: Column(children: [
                    AuthTextFromField(
                        controller: NameController,
                        obscureText: false,
                        validator: (value) {
                          if (!RegExp(validationName).hasMatch(value)) {
                            return 'Invaled Username';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: const Icon(
                          Icons.person,
                          size: 35,
                          color: textcolor,
                        ),
                        suffixIcon: const Text(''),
                        hintText: "  UserName"),
                    SizedBox(height: 3.h),
                    AuthTextFromField(
                        controller: EmailController,
                        obscureText: false,
                        validator: (value) {
                          if (!RegExp(validationEmail).hasMatch(value)) {
                            return "Invaled Email";
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
                    SizedBox(height: 5.h),
                    GetBuilder<Authcontroller>(builder: (_) {
                      return AuthTextFromField(
                          controller: ConfirmPassword,
                          obscureText: controller.isvisibility ? false : true,
                          validator: (value) {
                            if (value.toString().length < 6) {
                              return "Invaled Passworrd";
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
                          hintText: "  Confirm Password");
                    }),
                    SizedBox(height: 5.h),
                    GetBuilder<Authcontroller>(builder: (_) {
                      return AuthButton(
                        onPressed: () {
                          if (PasswordController.text.trim() !=
                              ConfirmPassword.text.trim()) {
                            Get.snackbar(
                              "Warning",
                              "Password Dosn't match",
                              snackPosition: SnackPosition.TOP,
                              backgroundColor: mainColor,
                              colorText: Colors.white,
                              duration: const Duration(seconds: 5),
                            );
                          } else if (Formkey.currentState!.validate()) {
                            String Name = NameController.text.trim();
                            String Email = EmailController.text.trim();
                            String pass = PasswordController.text.trim();
                            controller.signupfirebase(
                                name: Name, email: Email, password: pass);
                          }
                        },
                        text: "Sign Up",
                      );
                    }),
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: Divider(
                    //         color: Colors.black,
                    //         endIndent: 10,
                    //         height: 5,
                    //         indent: 10,
                    //         thickness: 2,
                    //       ),
                    //     ),
                    //     TextUtils(
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w900,
                    //       text: "      Or Sign up With Account      ",
                    //       color: Colors.black,
                    //       underLine: TextDecoration.none,
                    //     ),
                    //     Expanded(
                    //       child: Divider(
                    //         color: Colors.black,
                    //         endIndent: 10,
                    //         height: 5,
                    //         indent: 10,
                    //         thickness: 2,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // Row(
                    //   children: [
                    //     Expanded(
                    //       child: Container(
                    //         margin: EdgeInsets.symmetric(horizontal: 5.w),
                    //         decoration: BoxDecoration(
                    //           border: Border.all(width: 2, color: Colors.grey),
                    //           borderRadius: BorderRadius.circular(10),
                    //         ),
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Image.asset(
                    //               "assets/images/7.png",
                    //               width: 8.w,
                    //               height: 6.h,
                    //             ),
                    //             SizedBox(
                    //               width: 2.w,
                    //             ),
                    //             TextButton(
                    //               onPressed: () {},
                    //               child: TextUtils(
                    //                 fontSize: 20,
                    //                 fontWeight: FontWeight.bold,
                    //                 text: "Google",
                    //                 color: Colors.black,
                    //                 underLine: TextDecoration.none,
                    //               ),
                    //             )
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     Expanded(
                    //       child: Container(
                    //         margin: EdgeInsets.symmetric(horizontal: 5.w),
                    //         decoration: BoxDecoration(
                    //           border: Border.all(width: 2, color: Colors.grey),
                    //           borderRadius: BorderRadius.circular(10),
                    //         ),
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           children: [
                    //             Image.asset(
                    //               "assets/images/8.png",
                    //               width: 8.w,
                    //               height: 6.h,
                    //             ),
                    //             SizedBox(
                    //               width: 0.5.w,
                    //             ),
                    //             TextButton(
                    //                 onPressed: () {},
                    //                 child: TextUtils(
                    //                   fontSize: 20,
                    //                   fontWeight: FontWeight.bold,
                    //                   text: "Facebook",
                    //                   color: Colors.black,
                    //                   underLine: TextDecoration.none,
                    //                 ))
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
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
                      text: "already have an account? ",
                      color: textcolor2,
                      underLine: TextDecoration.none),
                  TextButton(
                      onPressed: () {
                        Get.offNamed(Routes.loginScreen);
                      },
                      child: TextUtils(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          text: "Login ",
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
