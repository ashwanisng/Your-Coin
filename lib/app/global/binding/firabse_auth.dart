import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:your_coin/app/modules/home/views/home_view.dart';

class FirebaseAuthController extends GetxController {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  // Rx<FireBaseUser> _user = Rx<User>();

  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);

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
}
