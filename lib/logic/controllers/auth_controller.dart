// ignore_for_file: non_constant_identifier_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:flutter_uni_app/Utiltes/them.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authcontroller extends GetxController {
  bool isvisibility = false;
  FirebaseAuth auth = FirebaseAuth.instance;
  var displayUsername = '';
  var displayuserphoto = '';
  var Googlesignin = GoogleSignIn();

  void visibility() {
    isvisibility = !isvisibility;

    update();
  }

  void signupfirebase({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) => () {
                displayUsername = name;
                auth.currentUser!.updateDisplayName(name);
              });

      update();
      Get.snackbar(
        "Lets Go",
        "The account has been done",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: mainColor,
        colorText: Colors.white,
        duration: const Duration(seconds: 5),
      );
      Get.offNamed(Routes.loginScreen);
    } on FirebaseAuthException catch (error) {
      String title = error.code.replaceFirst(RegExp('-'), '  ').capitalize!;
      String message = '';
      if (error.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (error.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      } else {
        message = error.message.toString();
      }

      Get.snackbar(
        title,
        message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white,
        colorText: Colors.black,
        duration: const Duration(seconds: 5),
      );
    } catch (error) {
      Get.snackbar(
        "Error!",
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.white,
        colorText: Colors.black,
        duration: const Duration(seconds: 5),
      );
    }
  }
  //////////

  void loginfirebase({required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);

      update();
      Get.offNamed(Routes.personalInformation);
    } on FirebaseAuthException catch (error) {
      String title = error.code.replaceFirst(RegExp('-'), '  ').capitalize!;
      String message = '';
      if (error.code == 'user-not-found') {
        message =
            ' Account does not exists for that $email.. Create your account by signing up..';
      } else if (error.code == 'wrong-password') {
        message = ' Invalid Password... PLease try again! ';
      } else {
        message = error.message.toString();
      }
      Get.snackbar(
        title,
        message,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: mainColor,
        colorText: Colors.black,
        duration: const Duration(seconds: 5),
      );
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: mainColor,
        colorText: Colors.white,
      );
    }
  }

  ///////////////////////////
  ///

  void googlesignupApp() async {
    try {
      final GoogleSignInAccount? googleUser = await Googlesignin.signIn();

      displayUsername = googleUser!.displayName!;
      displayuserphoto = googleUser.photoUrl!;

      update();
      Get.snackbar(
        "Welcome",
        "",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.white,
        colorText: Colors.black,
      );
      Get.offNamed(Routes.mainScreen);
    } catch (error) {
      Get.snackbar(
        'Error!',
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: const Color.fromARGB(255, 86, 86, 86),
        colorText: Colors.white,
      );
    }
  }

  ///////////////////////////
  void resetpassword() {}
}
