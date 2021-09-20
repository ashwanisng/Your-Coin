// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/get.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:your_coin/app/modules/home/views/home_view.dart';
// import 'package:your_coin/app/modules/home/views/widgets/home_screen.dart';

// class FirebaseAuthController extends GetxController {
//   FirebaseAuth firebaseAuth = FirebaseAuth.instance;

//   GoogleSignIn googleSignIn = GoogleSignIn();



//   void googleSignIn() async {
//     final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
//     final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount!.authentication;

//     final AuthCredential credential = GoogleAuthProvider.credential(
//       idToken: googleSignInAuthentication.idToken,
//       accessToken: googleSignInAuthentication.accessToken,
//     );

//     final User user = await firebaseAuth.signInWithCredential(credential).then((value) => HomeView());
//   }
// }