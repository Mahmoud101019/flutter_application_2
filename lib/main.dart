// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uni_app/logic/controllers/personla_controller.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'Routes/route.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Get.lazyPut(() => Personlacontroller());
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Approutes.splash1,
        getPages: Approutes.routes,
      ),
    );
  }
}
