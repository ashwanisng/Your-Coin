import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:your_coin/app/enviroment/utils/dialogs.dart/custom_dialog.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';

import 'package:your_coin/app/modules/entry/views/pages/auth_view.dart';
import 'package:your_coin/app/modules/home/views/home_view.dart';

class FirebaseAuthController extends GetxController {
  var isLogin = false.obs;
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

  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);

  final userData = GetStorage();

  //* Sign in with Google

  void googleSignInMethod() async {
    try {
      isLogin.value = true;
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
    } catch (e) {
      Get.snackbar(
        "Error",
        "Try Again",
        colorText: Env.colors.black,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Env.colors.leafGreen,
      );
    } finally {
      isLogin.value = false;
    }
  }

  //* create account with email and password

  void signUpWithEmailAndPassword(String email, String password) async {
    try {
      isLogin.value = true;
      await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((user) {
        return Get.offAll(HomeView());
      });
    } catch (e) {
      print(e);
      Get.snackbar(
        'Error login account',
        "Try Again",
        snackPosition: SnackPosition.BOTTOM,
        colorText: Env.colors.black,
        backgroundColor: Env.colors.leafGreen,
      );
    } finally {
      isLogin.value = false;
    }
  }

  //* sigin with email and password

  void signInWithEmailAndPassword(String email, String password) async {
    try {
      isLogin.value = true;
      CustomFullScreenDialog();
      await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((user) {
        userData.write('isLoggedIn', true);
        return Get.offNamed('/home');
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
    } finally {
      isLogin.value = false;
      CustomFullScreenDialog.cancelDialog();
    }
  }

// * sign out

  void signOut() async {
    await firebaseAuth.signOut().then((value) {
      userData.remove("isLoggedIn");
      return Get.offAll(AuthView());
    });
  }

  // * Send bug report

  void sendBugReprot(String title, String description) async {
    try {
      isLogin.value = true;
      CollectionReference collectionReference =
          FirebaseFirestore.instance.collection("report");

      FirebaseAuth auth = FirebaseAuth.instance;
      String uid = auth.currentUser!.uid.toString();
      collectionReference.add({
        "title": title,
        "description": description,
        "uid": uid,
      });
    } catch (e) {
      Get.snackbar(
        "Error found",
        "Please try again",
        colorText: Env.colors.black,
        backgroundColor: Env.colors.leafGreen,
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLogin.value = false;
      Get.snackbar(
        "Report Sent",
        "We will fix the bug ASAP",
        colorText: Env.colors.black,
        backgroundColor: Env.colors.leafGreen,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
