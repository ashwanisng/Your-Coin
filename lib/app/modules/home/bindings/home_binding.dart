import 'package:get/get.dart';

import 'package:your_coin/app/modules/home/controllers/home_controller.dart';
import 'package:your_coin/app/modules/sign_in/controllers/sign_in_controller.dart';
import 'package:your_coin/app/modules/sign_up/controllers/sign_up_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<SignInController>(
      () => SignInController(),
    );
    Get.lazyPut<SignUpController>(
      () => SignUpController(),
    );
  }
}
