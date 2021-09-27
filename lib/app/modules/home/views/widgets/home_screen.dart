import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';
import 'package:your_coin/app/modules/home/controllers/home_controller.dart';
import 'package:your_coin/app/modules/home/views/widgets/custom_dialogbox.dart';

class HomeScreenView extends GetView<HomeController> {
  final items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF09c6f9),
                          Color(0xFF045de9),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Obx(
                      () => ListView.builder(
                        itemCount: controller.exchangeList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  children: [
                                    Image.network(
                                      controller.exchangeList[index].image!,
                                      height: 40,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      controller.coinNameController.text
                                          .toUpperCase(),
                                      style: TextStyle(
                                        color: Env.colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 22,
                                        fontFamily: 'Nunito',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Total Balance: ",
                                        style: TextStyle(
                                          color: Env.colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'Nunito',
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '\$${(controller.exchangeList[index].currentPrice! * controller.numberOfCoin.value * controller.amountInvested.value).toStringAsFixed(2)}'
                                                .toString(),
                                        style: TextStyle(
                                          color: Env.colors.white,
                                          fontSize: 32,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'Nunito',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Market Value: ",
                                        style: TextStyle(
                                          color: Env.colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w900,
                                          fontFamily: 'Nunito',
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '\$${controller.exchangeList[index].currentPrice!.toStringAsFixed(2)} ${controller.exchangeList[index].symbol!.toUpperCase()}'
                                                .toString(),
                                        style: TextStyle(
                                          color: Env.colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Nunito',
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sorted by Rank',
                    style: TextStyle(
                      color: Env.colors.primaryGray,
                      fontSize: 18,
                      fontFamily: 'Nunito',
                    ),
                  ),
                  Text(
                    'Last 24 hr',
                    style:
                        TextStyle(color: Env.colors.primaryGray, fontSize: 18),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
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
                          data.id!.toUpperCase(),
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                        subtitle: Text(
                          'Rank ${data.marketCapRank}',
                          style: Theme.of(context).textTheme.headline1,
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
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 5,
          onPressed: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              'Add Your Investment Details',
                              style: TextStyle(
                                color: Env.colors.primaryLightIndigo,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              '*YC only has data 0f top 250 coins!',
                              style: TextStyle(
                                  color: Env.colors.red, fontSize: 14),
                            ),
                          ),
                        ),
                        Expanded(
                          child: CustomTextFormFeild(
                            editingController: controller.coinNameController,
                            lableText: 'Enter Coin Symbol',
                            hintText: 'Symbol : bitcoin',
                            inputType: TextInputType.text,
                          ),
                        ),
                        Expanded(
                            child: CustomTextFormFeild(
                          editingController: controller.amountController,
                          lableText: 'Total Amount invested',
                          hintText: '₹ 0',
                          inputType: TextInputType.number,
                          // onsaved: (value) {
                          //   controller.amountInvested.value = value! as int;
                          // },
                        )),
                        Expanded(
                            child: CustomTextFormFeild(
                          editingController: controller.numOfCoinController,
                          lableText: 'Total coins',
                          hintText: 'Coins : 0',
                          inputType: TextInputType.number,
                          // onsaved: (value) {
                          //   controller.totalCoin.value = value! as int;
                          // },
                        )),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text(
                                  'CANCLE',
                                  style: TextStyle(
                                    color: Env.colors.red,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                  primary: Env.colors.red,
                                ),
                              ),
                              SizedBox(width: 5),
                              OutlinedButton(
                                onPressed: () {
                                  controller.amountInvested.value = int.parse(
                                      controller.amountController.text);

                                  controller.coinName.value = controller
                                      .coinNameController.text
                                      .toLowerCase();

                                  controller.numberOfCoin.value = int.parse(
                                      controller.numOfCoinController.text);

                                  controller.dataFetch(controller
                                      .coinNameController.text
                                      .toLowerCase());

                                  Get.back();
                                },
                                child: Text(
                                  'ADD COIN',
                                  style: TextStyle(
                                    color: Env.colors.white,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                    backgroundColor: Env.colors.primaryGreen),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Env.colors.primaryBlue,
            ),
            child: Icon(
              Icons.add,
              color: Env.colors.white,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
    );
  }
}



/**
 * 
 */
