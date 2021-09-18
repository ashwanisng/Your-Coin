import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';
import 'package:your_coin/app/modules/about/views/about_view.dart';

import 'package:your_coin/app/modules/home/controllers/home_controller.dart';
import 'package:your_coin/app/modules/home/views/widgets/home_screen.dart';
import 'package:your_coin/app/modules/market/views/market_view.dart';
import 'package:your_coin/app/modules/news/views/news_view.dart';

class HomeView extends GetView<HomeController> {
  final List<Widget> _children = [
    HomeScreenView(),
    MarketView(),
    NewsView(),
    AboutView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => _children[controller.slectedIndex.value],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 12),
        child: BottomNavigationBar(
          backgroundColor: Env.colors.white,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: Env.colors.primaryBlue,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.trending_up_sharp,
                color: Env.colors.primaryBlue,
              ),
              label: 'Market',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.news_solid,
                color: Env.colors.primaryBlue,
              ),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
                color: Env.colors.primaryBlue,
              ),
              label: 'About',
            ),
          ],
          onTap: (_) {
            controller.slectedIndex.value = _;
          },
          currentIndex: controller.slectedIndex.value,
        ),
      ),
    );
  }
}
