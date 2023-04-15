// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, avoid_print, unused_local_variable, unused_import

import 'dart:io';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_uni_app/Routes/route.dart';
import 'package:get/get.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

class Personlacontroller extends GetxController {
  String? image1;
  String? image2;
  String? image3;
  String? image4;
  final _fireStore = FirebaseFirestore.instance;
  File? file;
  final storage = FirebaseStorage.instance;
  final fileee = Rxn<File>();
  final fileName = RxnString();

  var imagepacker = ImagePicker();
  void savedata({
    required String name,
    required String address,
    required String nationalID,
    required String phonenumber,
    required String totaldegrees,
    required String selectedType,
    required String? image1,
    required String? image2,
    required String? image3,
    required String? image4,
  }) async {
    if (name.isNotEmpty &&
        address.isNotEmpty &&
        nationalID.isNotEmpty &&
        phonenumber.isNotEmpty &&
        totaldegrees.isNotEmpty &&
        selectedType.isNotEmpty) {
      await _fireStore.collection("Student").add({
        "name": name,
        "address": address,
        "nationalID": nationalID,
        "phone number": phonenumber,
        "total degrees": totaldegrees,
        "selected Type": selectedType,
        "Personal Id:": image1,
        "Secondary Certificate": image2,
        "Nomination Card": image3,
        "Birth Certificate": image4,
      });
      update();
      Get.snackbar("Done", "Data has been Saved");
      Get.offNamed(Routes.mainScreen);
    } else {
      Get.snackbar("Error", "404");
    }
  }

  Uploadimage() async {
    var imagepacked = await imagepacker.pickImage(source: ImageSource.camera);

    file = File(imagepacked!.path);
    var nameimage = basename(imagepacked.path);
    //start uplaod

    var refstorage = FirebaseStorage.instance.ref("Images/$nameimage");

    await refstorage.putFile(file!);

    var url = await refstorage.getDownloadURL();

    return url;
  }

  //   Future<void> selectFile() async {
  //   final pickedFile = await FilePicker.platform.pickFiles(
  //     type: FileType.custom,
  //     allowedExtensions: ['pdf'],
  //   );
  //   if (pickedFile != null) {
  //     fileee.value = File(pickedFile.files.single.path!);
  //     fileName.value = basename(pickedFile.files.single.path!);
  //   }
  // }
  //   Future<void> uploadFile() async {
  //   if (fileee.value != null && fileName.value != null) {
  //     final taskSnapshot =
  //         await storage.ref().child(fileName.value!).putFile(fileee.value!);
  //     final downloadUrl = await taskSnapshot.ref.getDownloadURL();
  //     // save the download URL to Firebase Firestore or Realtime Database
  //   }
  //   else
  //   {
  //     Get.snackbar("title", "");
  //   }
  // }
}
