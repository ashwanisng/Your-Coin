import 'package:get/get.dart';

import 'package:your_coin/app/modules/auth_view/controllers/auth_view_controller.dart';

class AuthViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthViewController>(
      () => AuthViewController(),
    );
  }
}
