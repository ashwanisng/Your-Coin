import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:your_coin/app/modules/auth_view/views/auth_view_view.dart';

import 'package:your_coin/app/modules/entry/controllers/entry_controller.dart';

class EntryView extends GetView<EntryController> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: AuthViewView(),
      duration: 3000,
      imageSize: 130,
      imageSrc: "assets/images/rocket.svg",
      text: "Your Coin",
      textType: TextType.TyperAnimatedText,
      textStyle: TextStyle(
        fontSize: 30.0,
      ),
      backgroundColor: Colors.white,
    );
  }
}
