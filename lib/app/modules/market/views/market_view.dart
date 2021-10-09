import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';

import 'package:your_coin/app/modules/market/controllers/market_controller.dart';
import 'package:your_coin/app/modules/market/views/widgets/all_coins_page.dart';
import 'package:your_coin/app/modules/market/views/widgets/gainers_view.dart';
import 'package:your_coin/app/modules/market/views/widgets/lossers_view.dart';

class MarketView extends GetView<MarketController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFF3baee7),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: TabBar(
            // controller: tabController,
            unselectedLabelColor: Colors.lightBlue[100],
            labelColor: const Color(0xFF3baee7),
            indicatorWeight: 2,
            tabs: [
              Tab(
                text: 'ALL COINS',
                icon: Icon(
                  Icons.attach_money,
                  color: Env.colors.primaryBlue,
                ),
              ),
              Tab(
                text: 'GAINERS',
                icon: Icon(
                  Icons.trending_up_sharp,
                  color: Env.colors.primaryGreen,
                ),
              ),
              Tab(
                text: 'LOSSERS',
                icon: Icon(
                  Icons.trending_down_sharp,
                  color: Env.colors.red,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            AllCoinsView(),
            GainerView(),
            LossersView(),
          ],
        ),
      ),
    );
  }
}
