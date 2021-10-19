import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getxecomerce/app/theme/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      theme: appThemeData,
      initialRoute: AppPages.AUTH,
      getPages: AppPages.routes,
    ),
  );
}
