import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';

import 'package:your_coin/app/modules/entry/controllers/entry_controller.dart';
import 'package:your_coin/app/modules/entry/views/pages/auth_view.dart';

class EntryView extends GetView<EntryController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Env.colors.leafGreen),
      ),
    );
  }
}
