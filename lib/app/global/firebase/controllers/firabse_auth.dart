import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';
import 'package:your_coin/app/modules/home/views/home_view.dart';

class FirebaseAuthController extends GetxController {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  // Rx<FireBaseUser> _user = Rx<User>();

  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);

  //* Sign in with Google

  void googleSignInMethod() async {
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    GoogleSignInAuthentication authentication =
        await googleSignInAccount!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: authentication.idToken,
      accessToken: authentication.accessToken,
    );

    await firebaseAuth.signInWithCredential(credential).then((value) {
      return Get.offAll(HomeView());
    });
  }

  //* create account with email and password

  void signUpWithEmailAndPassword(String email, String password) async {
    try {
      await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((user) {
        return Get.offAll(HomeView());
      });
    } catch (e) {
      print(e);
      Get.snackbar(
        'Error login account',
        '$e',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Env.colors.black,
        backgroundColor: Env.colors.leafGreen,
      );
    }
  }

  //* sigin with email and password

  void signInWithEmailAndPassword(String email, String password) async {
    try {
      await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((user) {
        return Get.offAll(HomeView());
      });
    } catch (e) {
      print(e);
      Get.snackbar(
        "Error found",
        "Please check your Email or Password",
        colorText: Env.colors.black,
        backgroundColor: Env.colors.leafGreen,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
