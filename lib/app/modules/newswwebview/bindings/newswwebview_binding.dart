import 'package:get/get.dart';

import 'package:your_coin/app/modules/newswwebview/controllers/newswwebview_controller.dart';

class NewswwebviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewswwebviewController>(
      () => NewswwebviewController(),
    );
  }
}
