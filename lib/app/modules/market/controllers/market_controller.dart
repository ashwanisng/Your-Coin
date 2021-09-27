import 'package:get/get.dart';
import 'package:your_coin/app/data/models/crypto_model.dart';
import 'package:your_coin/app/global/services/api/market.dart';

class MarketController extends GetxController {
  //TODO: Implement MarketController

  var cryptoList = <CryptoCurrency>[].obs;

  // HomeController homeController = Get.find<HomeController>();

  var isLoading = true.obs;

  @override
  void onInit() async {
    try {
      isLoading.value = true;
      MarketApiServices marketApiServices = MarketApiServices();
      var data = await marketApiServices.fetchMarketData();
      if (data.isNotEmpty) {
        cryptoList.value = data;
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
    super.onInit();
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
