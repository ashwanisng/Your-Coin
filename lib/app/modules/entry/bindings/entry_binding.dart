import 'package:get/get.dart';

import 'package:your_coin/app/modules/entry/controllers/entry_controller.dart';

class EntryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(EntryController(), permanent: true);
  }
}
