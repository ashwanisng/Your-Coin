import 'package:get/get.dart';
import 'package:your_coin/app/modules/about/controllers/about_controller.dart';

import 'package:your_coin/app/modules/home/controllers/home_controller.dart';
import 'package:your_coin/app/modules/market/controllers/market_controller.dart';
import 'package:your_coin/app/modules/news/controllers/news_controller.dart';
import 'package:your_coin/app/modules/news_web_view/controllers/news_web_view_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<MarketController>(
      () => MarketController(),
    );

    Get.lazyPut<NewsController>(
      () => NewsController(),
    );
    Get.lazyPut<AboutController>(
      () => AboutController(),
    );

    Get.lazyPut<NewsWebViewController>(
      () => NewsWebViewController(),
    );
    // Get.lazyPut<FirebaseAuthController>(() => FirebaseAuthController());
  }
}
