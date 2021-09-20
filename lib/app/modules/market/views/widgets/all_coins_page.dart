import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_coin/app/modules/market/controllers/market_controller.dart';

class AllCoinsView extends GetView<MarketController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          if (controller.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: controller.cryptoList.length,
              itemBuilder: (context, index) {
                var data = controller.cryptoList[index];
                return Column(
                  children: [
                    ListTile(
                      leading: Image.network(data.image!),
                      title: Text(data.name!),
                      subtitle: Text(
                        data.priceChange24H!.toStringAsFixed(2),
                      ),
                      trailing: Text(
                        data.marketCapChangePercentage24H!.toStringAsFixed(2),
                      ),
                    ),
                    Divider(),
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}
