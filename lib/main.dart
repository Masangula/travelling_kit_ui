import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:travelling_kit_ui/app/colors/application_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Travelling Kit UI",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      darkTheme: ApplicationTheme.darkTheme,
      theme: ApplicationTheme.lightTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      
    ),
  );
}
