import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:your_coin/app/modules/entry/views/pages/auth_view.dart';
import 'package:your_coin/app/modules/home/views/home_view.dart';

class EntryController extends GetxController {
  //TODO: Implement EntryController

  final userData = GetStorage();

  @override
  void onInit() {
    super.onInit();

    userData.writeIfNull("isLoggedIn", false);

    Future.delayed(Duration(seconds: 3), () async {
      checkIfLoggedInOrNot();
    });
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void checkIfLoggedInOrNot() {
    if (userData.read("isLoggedIn") == true) {
      Get.offAll(HomeView());
    } else {
      Get.offAll(AuthView());
    }
    // userData.read("isLoggedIn")
    //     ? )
    //     : ;
  }
}
