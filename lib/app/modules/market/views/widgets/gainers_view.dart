import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_coin/app/modules/market/controllers/market_controller.dart';

class GainerView extends GetView<MarketController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        return ListView.builder(
          itemCount: controller.cryptoList.length,
          itemBuilder: (context, index) {
            var data = controller.cryptoList[index];
            return !data.priceChangePercentage24H!.isNegative
                ? Column(
                    children: [
                      Card(
                        elevation: 2,
                        child: ListTile(
                          leading: Image.network(
                            data.image!,
                            height: 46,
                          ),
                          title: Text(
                            data.id!.toUpperCase(),
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          subtitle: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'Price Change ',
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              TextSpan(
                                text:
                                    '\$${data.priceChange24H!.toStringAsFixed(2)}',
                                style: TextStyle(
                                  color: data.priceChange24H!.isNegative
                                      ? Colors.red
                                      : Colors.green,
                                ),
                              )
                            ]),
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                child: RichText(
                                  text: TextSpan(
                                    text:
                                        '\$ ${data.currentPrice!.toStringAsFixed(2)}',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: RichText(
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                    text: data.priceChangePercentage24H!
                                            .isNegative
                                        ? ' ${data.priceChangePercentage24H!.toStringAsFixed(3)}%'
                                        : '+ ${data.priceChangePercentage24H!.toStringAsFixed(3)}%',
                                    style: TextStyle(
                                        color: data.priceChangePercentage24H!
                                                .isNegative
                                            ? Colors.red
                                            : Colors.green,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // ListTile(
                      //   leading: Image.network(data.image!),
                      //   title: Text(data.name!),
                      //   subtitle: Text(
                      //     data.priceChange24H!.toStringAsFixed(2),
                      //     style: Theme.of(context).textTheme.headline1,
                      //   ),
                      //   trailing: Text(data.marketCapChangePercentage24H!
                      //       .toStringAsFixed(2)),
                      // ),
                      // Divider(),
                    ],
                  )
                : SizedBox();
          },
        );
      }
    }));
  }
}
/**
 *  Card(
                      elevation: 2,
                      child: ListTile(
                        leading: Image.network(
                          data.image!,
                          height: 46,
                        ),
                        title: Text(
                          data.id!.toUpperCase(),
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        subtitle: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: 'Price Change ',
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            TextSpan(
                              text:
                                  '\$${data.priceChange24H!.toStringAsFixed(2)}',
                              style: TextStyle(
                                color: data.priceChange24H!.isNegative
                                    ? Colors.red
                                    : Colors.green,
                              ),
                            )
                          ]),
                        ),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              child: RichText(
                                text: TextSpan(
                                  text:
                                      '\$ ${data.currentPrice!.toStringAsFixed(2)}',
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                              ),
                            ),
                            Flexible(
                              child: RichText(
                                overflow: TextOverflow.ellipsis,
                                text: TextSpan(
                                  text: data
                                          .priceChangePercentage24H!.isNegative
                                      ? ' ${data.priceChangePercentage24H!.toStringAsFixed(3)}%'
                                      : '+ ${data.priceChangePercentage24H!.toStringAsFixed(3)}%',
                                  style: TextStyle(
                                      color: data.priceChangePercentage24H!
                                              .isNegative
                                          ? Colors.red
                                          : Colors.green,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
 */
