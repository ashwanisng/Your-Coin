import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:your_coin/app/enviroment/utils/dialogs.dart/custom_dialog.dart';
import 'package:your_coin/app/global/binding/firabse_auth.dart';
import 'package:your_coin/app/modules/entry/controllers/entry_controller.dart';

class SignInController extends GetxController {
  //TODO: Implement SignInController

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // EntryController entryController = Get.find<EntryController>();

  // FirebaseAuthController authController = Get.find<FirebaseAuthController>();

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

  // Future<User?> signInWithGoogle({required BuildContext context}) async {
  //   FirebaseAuth auth = FirebaseAuth.instance;
  //   User? user;

  //   final GoogleSignIn googleSignIn = GoogleSignIn();

  //   final GoogleSignInAccount? googleSignInAccount =
  //       await googleSignIn.signIn();

  //   if (googleSignInAccount != null) {
  //     final GoogleSignInAuthentication googleSignInAuthentication =
  //         await googleSignInAccount.authentication;

  //     final AuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleSignInAuthentication.accessToken,
  //       idToken: googleSignInAuthentication.idToken,
  //     );

  //     try {
  //       final UserCredential userCredential =
  //           await auth.signInWithCredential(credential);

  //       user = userCredential.user;
  //     } on FirebaseAuthException catch (e) {
  //       if (e.code == 'account-exists-with-different-credential') {
  //         // handle the error here
  //       } else if (e.code == 'invalid-credential') {
  //         // handle the error here
  //       }
  //     } catch (e) {
  //       // handle the error here
  //     }
  //   }

  //   return user;
  // }

  // void loginUser() async {
  //   CustomFullScreenDialog.showDialog();
  //   GoogleSignInAccount? googleSignInAccount =
  //       await entryController.googleSignIn.signIn();

  //   if (googleSignInAccount == null) {
  //     CustomFullScreenDialog.cancelDialog();
  //   } else {
  //     GoogleSignInAuthentication googleSignInAuthentication =
  //         await googleSignInAccount.authentication;
  //     OAuthCredential oAuthCredential = GoogleAuthProvider.credential(
  //       accessToken: googleSignInAuthentication.accessToken,
  //       idToken: googleSignInAuthentication.idToken,
  //     );
  //     await entryController.firebaseAuth.signInWithCredential(oAuthCredential);
  //     CustomFullScreenDialog.cancelDialog();
  //   }
  // }
}
