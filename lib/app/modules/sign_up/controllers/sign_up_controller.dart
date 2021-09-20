import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_coin/app/modules/entry/controllers/entry_controller.dart';

class SignUpController extends GetxController {
  //TODO: Implement SignUpController

  TextEditingController emailController =
      TextEditingController(text: "test@test.com");
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController =
      TextEditingController(text: "123456");

  var isVisible = true.obs;

  void tooglePassword() {
    isVisible.value = !isVisible.value;
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
