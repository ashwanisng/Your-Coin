import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:your_coin/app/modules/entry/views/pages/auth_view.dart';
import 'package:your_coin/app/modules/home/views/home_view.dart';
import 'package:your_coin/app/modules/home/views/widgets/home_screen.dart';
import 'package:your_coin/app/routes/app_pages.dart';

class EntryController extends GetxController {
  //TODO: Implement EntryController

  // late GoogleSignIn googleSignIn;
  // var isSignedIn = false.obs;
  // FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 2)).then((_) => Get.to(() => AuthView()));
  }

  @override
  void onReady() async {
    // googleSignIn = GoogleSignIn();
    // ever(isSignedIn, handleAuthStateChanged);

    // isSignedIn.value = await firebaseAuth.currentUser != null;
    // firebaseAuth.authStateChanges().listen((event) {
    //   isSignedIn.value = event != null;
    // });
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  // void handleAuthStateChanged(isLoggedIn) {
  //   if (isLoggedIn) {
  //     Get.offAll(() => HomeScreenView());
  //   } else {
  //     Get.offAll(() => AuthView());
  //   }
  // }
}
