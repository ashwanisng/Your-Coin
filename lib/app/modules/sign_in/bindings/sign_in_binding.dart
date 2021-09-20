import 'package:get/get.dart';
import 'package:your_coin/app/global/firebase/controllers/firabse_auth.dart';
import 'package:your_coin/app/modules/entry/controllers/entry_controller.dart';
import 'package:your_coin/app/modules/home/controllers/home_controller.dart';

import 'package:your_coin/app/modules/sign_in/controllers/sign_in_controller.dart';
import 'package:your_coin/app/modules/sign_up/controllers/sign_up_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(
      () => SignInController(),
    );

    Get.put(FirebaseAuthController(), permanent: true);
    Get.put(HomeController(), permanent: true);
    // Get.lazyPut<FirebaseAuthController>(
    //   () => FirebaseAuthController(),
    // );

    // Get.lazyPut<EntryController>(
    //   () => EntryController(),
    // );
    // Get.lazyPut<HomeController>(
    //   () => HomeController(),
    // );
    // Get.lazyPut<EntryController>(
    //   () => EntryController(),
    // );
  }
}
