import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_coin/app/modules/auth_view/views/auth_view_view.dart';

class EntryController extends GetxController {
  //TODO: Implement EntryController

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 2))
        .then((_) => Get.to(() => AuthViewView()));
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
