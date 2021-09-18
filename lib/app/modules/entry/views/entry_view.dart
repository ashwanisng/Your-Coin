import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import 'package:your_coin/app/modules/entry/controllers/entry_controller.dart';
import 'package:your_coin/app/utils/loaders/loaders.dart';

class EntryView extends GetView<EntryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EntryView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          SvgPicture.asset(
            'assets/images/rcoket.svg',
            height: 100,
            width: 100,
            color: Colors.indigo,
          ),
          getProgressIndicator(),
        ],
      )),
    );
  }
}
