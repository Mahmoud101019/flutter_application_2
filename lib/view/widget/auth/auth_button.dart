import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:flutter_uni_app/view/widget/text_utils.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const AuthButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: mainColor,
          minimumSize: const Size(360, 50)),
      child: TextUtils(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          text: text,
          color: Colors.white,
          underLine: TextDecoration.none),
    );
  }
}