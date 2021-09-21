import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:your_coin/app/enviroment/utils/theme.dart';
import 'package:your_coin/app/enviroment/utils/theme_service.dart';
import 'package:your_coin/app/global/firebase/bindings/binding.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: AllBinding(),
      theme: YourTheme.lightTheme,
      darkTheme: YourTheme.darkTheme,
      themeMode: ThemeService().getThemeMode(),
    ),
  );
}
