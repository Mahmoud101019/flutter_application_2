import 'package:flutter_uni_app/logic/bindings/auth_biniding.dart';
import 'package:flutter_uni_app/logic/bindings/main_binding.dart';
import 'package:flutter_uni_app/logic/bindings/personal_biniding.dart';
import 'package:flutter_uni_app/view/Screen/Main_Screen.dart';
import 'package:flutter_uni_app/view/Screen/Splash/Splash1Screen.dart';
import 'package:flutter_uni_app/view/Screen/Splash/Splash2Screen.dart';
import 'package:flutter_uni_app/view/Screen/University%20Screen/Bue_Screen.dart';
import 'package:flutter_uni_app/view/Screen/auth/Login_screen.dart';
import 'package:flutter_uni_app/view/Screen/auth/forgetpassword.dart';
import 'package:flutter_uni_app/view/Screen/auth/signup_screen.dart';
import 'package:flutter_uni_app/view/Screen/onboarding/onboarding%201_screen.dart';
import 'package:flutter_uni_app/view/Screen/onboarding/onboarding%202_screen.dart';
import 'package:flutter_uni_app/view/Screen/personal/personal_information.dart';
import 'package:flutter_uni_app/view/Screen/university_Screen.dart';
import 'package:get/get.dart';

class Approutes {
  //initialRoute

  static const splash1 = Routes.splash1;

  //get Pages
  static final routes = [
    GetPage(
      name: Routes.splash1,
      page: () => const Splash1Screen(),
    ),
    GetPage(
      name: Routes.splash2,
      page: () => const Splash2Screen(),
    ),
    GetPage(
      name: Routes.onboarding1,
      page: () => const Onboarding1(),
    ),
    GetPage(
      name: Routes.onboarding2,
      page: () => const Onboarding2(),
    ),
    GetPage(
        name: Routes.signupScreen,
        page: () => SignupScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.loginScreen,
        page: () => LoginScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.forgetpasswordScreen,
        page: () => ForgetpasswordScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.mainScreen,
        page: () => MainScreen(),
        bindings: [AuthBinding(), MainBininding()]),
    GetPage(
        name: Routes.personalInformation,
        page: () => PersonalInformation(),
        bindings: [AuthBinding(), MainBininding(), PersonalBininding()]),
    GetPage(
        name: Routes.universityScreen,
        page: () => const UniversityScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.bueScreen,
        page: () => const BueScreen(),
        binding: AuthBinding()),
  ];
}

class Routes {
  static const splash1 = '/Splash1Screen';
  static const splash2 = '/Splash2Screen';
  static const onboarding1 = '/Onboarding1';
  static const onboarding2 = '/onboarding2';
  static const signupScreen = '/SignupScreen';
  static const loginScreen = '/LoginScreen';
  static const forgetpasswordScreen = '/ForgetpasswordScreen';
  static const mainScreen = '/MainScreen';
  static const personalInformation = '/PersonalInformation';
  static const universityScreen = '/UniversityScreen';
  static const bueScreen = '/BueScreen';
}
