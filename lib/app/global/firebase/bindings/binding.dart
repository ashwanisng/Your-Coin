import 'package:get/get.dart';
import 'package:your_coin/app/global/firebase/controllers/firabse_auth.dart';
import 'package:your_coin/app/modules/about/controllers/about_controller.dart';
import 'package:your_coin/app/modules/entry/controllers/entry_controller.dart';
import 'package:your_coin/app/modules/home/controllers/home_controller.dart';
import 'package:your_coin/app/modules/market/controllers/market_controller.dart';
import 'package:your_coin/app/modules/news/controllers/news_controller.dart';
import 'package:your_coin/app/modules/sign_in/controllers/sign_in_controller.dart';

class AllBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => FirebaseAuthController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => MarketController());
    Get.lazyPut(() => NewsController());
    Get.lazyPut(() => AboutController());
    // Get.put(() => AboutController(), permanent: true);
    Get.lazyPut(() => EntryController());
    Get.lazyPut(() => SignInController());
  }
}
