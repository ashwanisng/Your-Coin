import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/theme_service.dart';
import 'package:your_coin/app/global/firebase/controllers/firabse_auth.dart';

class AboutController extends GetxController {
  //TODO: Implement AboutController

  var isDark = false.obs;

  FirebaseAuthController firebaseAuthController =
      Get.find<FirebaseAuthController>();

  void changeTheme() {
    try {
      ThemeService().changeThemeMode();
      isDark.value = ThemeService().isDark;
    } catch (e) {
      print(e);
    } finally {
      isDark.value = true;
    }
  }

  @override
  void onInit() {
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
