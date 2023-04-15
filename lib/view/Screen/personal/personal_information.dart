// ignore_for_file: non_constant_identifier_names, must_be_immutable, sort_child_properties_last, prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, unused_import, avoid_print, no_leading_underscores_for_local_identifiers, unnecessary_null_comparison, prefer_const_constructors, depend_on_referenced_packages, unused_local_variable, unused_field

import 'dart:io';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/my_string.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/logic/controllers/personla_controller.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_button.dart';
import 'package:flutter_uni_app/view/widget/auth/auth_text_from_field.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class PersonalInformation extends StatefulWidget {
  PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  static String? url1;
  static String? url2;
  static String? url3;
  static String? url4;
  final Formkey = GlobalKey<FormState>();

  final controller = Get.find<Personlacontroller>();
  // final Personlacontroller controllerrr = Get.put(Personlacontroller());

  final TextEditingController Name = TextEditingController();

  final TextEditingController address = TextEditingController();

  final TextEditingController nationalID = TextEditingController();

  final TextEditingController phonenumber = TextEditingController();

  final TextEditingController totaldegrees = TextEditingController();
  var selectedCurrency, selectedType;
  final List<String> _accountType = [
    'American',
    'IG',
    'ثانوي عام أدبي ',
    'ثانوي عام علمي رياضيات',
    'ثانوي عام علمي علوم',
    'ثانوي أزهري',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          elevation: 0,
          title: TextUtils(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              text: "Uni Smart Admission",
              color: Colors.white,
              underLine: TextDecoration.none),
          centerTitle: true,
          actions: [
            Image.asset(
              "assets/images/unisa white 2.png",
              width: 50,
              height: 50,
            ),
          ],
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 1.5.h),
                child: Form(
                  key: Formkey,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextUtils(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            text: "Name",
                            color: Colors.black,
                            underLine: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      AuthTextFromField(
                          controller: Name,
                          obscureText: false,
                          validator: (value) {
                            if (!RegExp(validationName).hasMatch(value)) {
                              return "invaled Email";
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: const Text(''),
                          suffixIcon: const Text(''),
                          hintText: "Name"),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextUtils(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            text: "Address:",
                            color: Colors.black,
                            underLine: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      AuthTextFromField(
                          controller: address,
                          obscureText: false,
                          validator: (value) {
                            if (value.toString().length < 10) {
                              return "invaled address";
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: const Text(''),
                          suffixIcon: const Text(''),
                          hintText: "address"),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextUtils(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            text: "National ID:",
                            color: Colors.black,
                            underLine: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      AuthTextFromField(
                          controller: nationalID,
                          obscureText: false,
                          validator: (value) {
                            if (value.toString().length != 14) {
                              return "invaled nationalID";
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: const Text(''),
                          suffixIcon: const Text(''),
                          hintText: "national ID:"),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextUtils(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            text: "Phone Number:",
                            color: Colors.black,
                            underLine: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      AuthTextFromField(
                          controller: phonenumber,
                          obscureText: false,
                          validator: (value) {
                            if (value.toString().length != 11) {
                              return "invaled phonenumber";
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: const Text(''),
                          suffixIcon: const Text(''),
                          hintText: "phone number:"),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextUtils(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            text: "Total Degrees:",
                            color: Colors.black,
                            underLine: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      AuthTextFromField(
                          controller: totaldegrees,
                          obscureText: false,
                          validator: (value) {
                            if (value.toString().isEmpty) {
                              return "invaled degrees";
                            } else {
                              return null;
                            }
                          },
                          prefixIcon: const Text(''),
                          suffixIcon: const Text(''),
                          hintText: "total degrees:"),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextUtils(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            text: "Specialization:",
                            color: Colors.black,
                            underLine: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      DropdownButtonFormField(
                        validator: (value) {
                          if (value == null) {
                            Get.snackbar("Please Fill Your Specialization", "");
                          }
                          return null;
                        },
                        items: _accountType
                            .map((value) => DropdownMenuItem(
                                  alignment: Alignment.center,
                                  child: Text(
                                    value,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  value: value,
                                ))
                            .toList(),
                        onChanged: (selectedAccountType) {
                          setState(() {
                            selectedType = selectedAccountType;
                          });
                        },
                        value: selectedType,
                        isExpanded: false,
                        borderRadius: BorderRadius.circular(20),
                        hint: Text(
                          'Choose Certivicate Type',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      // Column(
                      //   children: [
                      //     GetBuilder<Personlacontroller>(builder: (_) {
                      //       return ElevatedButton(
                      //         onPressed: controllerrr.selectFile,
                      //         child: Text('Select PDF'),
                      //       );
                      //     }),
                      //     SizedBox(height: 16),
                      //     Obx(() => Text(controller.fileName.value ?? "error")),
                      //     SizedBox(height: 16),
                      //     GetBuilder(builder: (_) {
                      //       return ElevatedButton.icon(
                      //         onPressed: controllerrr.uploadFile,
                      //         icon: Icon(Icons.upload),
                      //         label: Text('Upload PDF'),
                      //       );
                      //     }),
                      //   ],
                      // ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextUtils(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            text: "Nomination Card:",
                            color: Colors.black,
                            underLine: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      GetBuilder<Personlacontroller>(builder: (_) {
                        return AuthButton(
                            text: "Upload",
                            onPressed: () async {
                              url1 = await controller.Uploadimage();
                              print("========================");
                              print(url1);
                            });
                      }),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextUtils(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            text: "Secondary Certificate:",
                            color: Colors.black,
                            underLine: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      GetBuilder<Personlacontroller>(builder: (_) {
                        return AuthButton(
                            text: "Upload",
                            onPressed: () async {
                              url2 = await controller.Uploadimage();
                              print("========================");
                              print(url2);
                            });
                      }),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextUtils(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            text: "National Id:",
                            color: Colors.black,
                            underLine: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      GetBuilder<Personlacontroller>(builder: (_) {
                        return AuthButton(
                            text: "Upload",
                            onPressed: () async {
                              url3 = await controller.Uploadimage();
                              print("========================");
                              print(url3);
                            });
                      }),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextUtils(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            text: "Birth Certificate:",
                            color: Colors.black,
                            underLine: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      GetBuilder<Personlacontroller>(builder: (_) {
                        return AuthButton(
                            text: "Upload",
                            onPressed: () async {
                              url4 = await controller.Uploadimage();
                              print("========================");
                              print(url4);
                            });
                      }),
                      SizedBox(
                        height: 8.h,
                      ),
                      GetBuilder<Personlacontroller>(builder: (_) {
                        return AuthButton(
                            text: "ADD",
                            onPressed: () {
                              Get.offNamed(Routes.universityScreen);
                              // if (Formkey.currentState!.validate() &&
                              //     url1 != null &&
                              //     url2 != null &&
                              //     url3 != null &&
                              //     url4 != null) {
                              //   String _name = Name.text.trim();
                              //   String _adrees = address.text.trim();
                              //   String _nationalId = nationalID.text.trim();
                              //   String _phonenumber = phonenumber.text.trim();
                              //   String _totaldegrees = totaldegrees.text.trim();
                              //   controller.savedata(
                              //       name: _name,
                              //       address: _adrees,
                              //       nationalID: _nationalId,
                              //       phonenumber: _phonenumber,
                              //       totaldegrees: _totaldegrees,
                              //       selectedType: selectedType,
                              //       image1: url1,
                              //       image2: url2,
                              //       image3: url3,
                              //       image4: url4);
                              // } else {
                              //   Get.snackbar(
                              //       "Error404", "Please Check Your Data");
                              // }
                            });
                      }),
                      SizedBox(
                        height: 5.h,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
