import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';
import 'package:your_coin/app/modules/home/controllers/home_controller.dart';

class CustomCard extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: controller.marketController.cryptoList.length,
      itemBuilder: (context, index) {
        var data = controller.marketController.cryptoList[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Card(
            elevation: 2,
            child: ListTile(
              leading: Image.network(data.image!),
              title: Text(
                data.id!,
                style: TextStyle(
                  fontFamily: 'Nunito',
                ),
              ),
              subtitle: Text('Rank ${data.marketCapRank}'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: RichText(
                      text: TextSpan(
                        text: '\$ ${data.currentPrice!.toStringAsFixed(2)}',
                        style: TextStyle(
                          color: Env.colors.black,
                          fontFamily: 'Nunito',
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        text: data.priceChangePercentage24H!.isNegative
                            ? ' ${data.priceChangePercentage24H!.toStringAsFixed(3)}%'
                            : '+ ${data.priceChangePercentage24H!.toStringAsFixed(3)}%',
                        style: TextStyle(
                            color: data.priceChangePercentage24H!.isNegative
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
        );
      },
    );
  }
}



/**
 * SizedBox(
      height: 240, // card height
      child: PageView.builder(
        itemCount: controller.marketController.cryptoList.length,
        controller: PageController(viewportFraction: 0.6),
        itemBuilder: (_, i) {
          var data = controller.marketController.cryptoList[i];
          return Card(
            color: Colors.blue[400],
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 80,
                      child: Image.network(data.image!),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(
                            text: data.id!.toUpperCase() + ' / USD',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text(
                            data.priceChangePercentage24H!.toStringAsFixed(2),
                            style: TextStyle(
                                color: data.priceChangePercentage24H!.isNegative
                                    ? Colors.red
                                    : Colors.green,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Text(
                      '\$ ${data.currentPrice!.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: Env.colors.primaryGreen,
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
 */