import 'package:get/get.dart';

import 'package:your_coin/app/modules/market/controllers/market_controller.dart';

class MarketBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MarketController>(
      () => MarketController(),
    );
  }
}
