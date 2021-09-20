import 'package:get/get.dart';

import 'package:your_coin/app/modules/news_web_view/controllers/news_web_view_controller.dart';

class NewsWebViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsWebViewController>(
      () => NewsWebViewController(),
    );
  }
}
