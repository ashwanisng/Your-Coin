import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_coin/app/global/firebase/controllers/firabse_auth.dart';

class SignInController extends GetxController {
  //TODO: Implement SignInController

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuthController authController = Get.find<FirebaseAuthController>();

  var isVisible = true.obs;

  void tooglePassword() {
    isVisible.value = !isVisible.value;
  }

  @override
  void onInit() {
    print("object");
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
