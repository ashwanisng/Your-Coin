import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
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
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.trending_up_sharp,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: 'Market',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.news_solid,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: 'News',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
                color: Theme.of(context).colorScheme.primary,
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
