import 'package:get/get.dart';
import 'package:your_coin/app/global/binding/firabse_auth.dart';

import 'package:your_coin/app/modules/entry/controllers/entry_controller.dart';
import 'package:your_coin/app/modules/home/controllers/home_controller.dart';
import 'package:your_coin/app/modules/sign_in/controllers/sign_in_controller.dart';

class EntryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EntryController(), permanent: true);
    Get.put(SignInController(), permanent: true);
    // Get.lazyPut(() => FirebaseAuthController());
    // Get.put(HomeController(), permanent: true);
  }
}
