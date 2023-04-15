import 'package:flutter_uni_app/logic/controllers/personla_controller.dart';
import 'package:get/get.dart';

class PersonalBininding extends Bindings {
  @override
  void dependencies() {
    Get.put(Personlacontroller());
  }
}
