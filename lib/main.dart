import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxecomerce/app/theme/theme.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      theme: appThemeData,
      initialRoute: AppPages.AUTH,
      defaultTransition: Transition.fadeIn,
      getPages: AppPages.routes,
    ),
  );
}

//bilelmer@