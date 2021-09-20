import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';

import 'package:your_coin/app/modules/entry/controllers/entry_controller.dart';

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
