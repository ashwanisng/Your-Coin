import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:your_coin/app/data/models/exchange_model.dart';
import 'package:your_coin/app/global/services/api/exchange.dart';
import 'package:your_coin/app/modules/entry/controllers/entry_controller.dart';
import 'package:your_coin/app/modules/market/controllers/market_controller.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  TextEditingController coinNameController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController numOfCoinController = TextEditingController();

  MarketController marketController = Get.find();

  var exchangeList = <ExchangeModel>[].obs;

  var coinName = ''.obs;
  var amountInvested = 0.obs;
  var numberOfCoin = 0.obs;
  var slectedIndex = 0.obs;

  var profit = 0.obs;
  var marketVal = 0.obs;

  void changeIndex(int index) {
    slectedIndex.value = index;
  }

  void dataFetch(String coin) async {
    ExchangeApiServices marketApiServices = ExchangeApiServices();
    var data = await marketApiServices.fetchMarketData(coin);

    if (data.isNotEmpty) {
      exchangeList.value = data;
    }
  }

  @override
  void onInit() async {
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

  // void loggedOutUser() async {
  //   await entryController.googleSignIn.disconnect();
  //   await entryController.firebaseAuth.signOut();
  // }
}
