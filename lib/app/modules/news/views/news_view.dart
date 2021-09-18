import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:your_coin/app/modules/news/controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NewsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
