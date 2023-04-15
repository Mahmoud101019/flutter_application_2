import 'package:flutter_uni_app/logic/controllers/auth_controller.dart';
import 'package:get/get.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Authcontroller());
  }
}
