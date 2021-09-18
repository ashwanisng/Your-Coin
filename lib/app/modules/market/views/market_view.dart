import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:your_coin/app/modules/market/controllers/market_controller.dart';

class MarketView extends GetView<MarketController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MarketView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MarketView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
