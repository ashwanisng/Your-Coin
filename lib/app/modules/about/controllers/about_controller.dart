import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/theme.dart';
import 'package:your_coin/app/enviroment/utils/theme_service.dart';

class AboutController extends GetxController {
  //TODO: Implement AboutController

  var isDark = false.obs;

  void changeTheme(value) {
    if (isDark.value == true) {
      ThemeService().changeThemeMode();
    } else {
      isDark.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
