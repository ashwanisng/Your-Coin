import 'package:get/get.dart';

import 'package:your_coin/app/modules/sign_up/controllers/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(() => SignUpController(), fenix: true);
  }
}
