// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchformScreen extends StatelessWidget {
  const SearchformScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: TextFormField(
        cursorColor: Colors.white,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            fillColor: Colors.white,
            focusColor: Colors.red,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            hintText: "Search",
            hintStyle: TextStyle(
                color: Colors.black,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold),
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(50)
                ),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(50)
                ),
                errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(50)
                ),
                focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(50)
                )
                ),
      ),
    );
  }
}
