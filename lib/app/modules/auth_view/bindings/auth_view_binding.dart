import 'package:get/get.dart';

import 'package:your_coin/app/modules/auth_view/controllers/auth_view_controller.dart';
import 'package:your_coin/app/modules/sign_in/controllers/sign_in_controller.dart';
import 'package:your_coin/app/modules/sign_up/controllers/sign_up_controller.dart';

class AuthViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthViewController>(
      () => AuthViewController(),
    );
    Get.lazyPut<SignInController>(
      () => SignInController(),
    );
    Get.lazyPut<SignUpController>(
      () => SignUpController(),
    );
  }
}
