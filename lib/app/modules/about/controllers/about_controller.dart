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
      isDark.value = false;
      ThemeService().changeThemeMode();
    } catch (e) {
      print(e);
    } finally {
      isDark.value = true;
    }
  }

  void changeValue() {
    if (ThemeService().isSaveDarkMode() == true) {
      // isDark.value = true;
    } else {
      // isDark.value = false;
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
