import 'package:get/get.dart';
import 'package:your_coin/app/global/binding/firabse_auth.dart';
import 'package:your_coin/app/modules/home/controllers/home_controller.dart';
import 'package:your_coin/app/modules/market/controllers/market_controller.dart';
import 'package:your_coin/app/modules/news/controllers/news_controller.dart';

class AllBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => FirebaseAuthController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => MarketController());
    Get.lazyPut(() => NewsController());
  }
}
