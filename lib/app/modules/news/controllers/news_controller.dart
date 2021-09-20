import 'package:flutter_share/flutter_share.dart';
import 'package:get/get.dart';
import 'package:your_coin/app/data/models/articel_model.dart';
import 'package:your_coin/app/global/services/api/news.dart';

class NewsController extends GetxController {
  //TODO: Implement NewsController

  var newsList = <ArticelModel>[].obs;
  var isLoading = true.obs;
  var data;

  @override
  void onInit() async {
    try {
      isLoading(true);
      NewsService newsService = NewsService();

      await newsService.getNews();

      newsList.value = newsService.news;
    } finally {
      isLoading(false);
    }
    super.onInit();
  }

  Future<void> shareFun(dynamic link, String title) async {
    await FlutterShare.share(
        title: 'Share News',
        text: title,
        linkUrl: link,
        chooserTitle: 'Everywhere');
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
