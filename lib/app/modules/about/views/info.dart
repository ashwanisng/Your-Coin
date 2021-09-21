import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';
import 'package:your_coin/app/modules/home/views/home_view.dart';
import 'package:your_coin/app/modules/home/views/widgets/home_screen.dart';
import 'package:your_coin/app/modules/market/views/widgets/all_coins_page.dart';
import 'package:your_coin/app/modules/news/views/news_view.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: mainHeading(context),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: heading2(context),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: heading3(context),
              ),
              Divider(thickness: 2),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: heading4(context),
              ),
              Divider(thickness: 2),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: heading5(context),
              ),
              Divider(thickness: 2),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: heading6(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container heading6(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "You can also get relevant and current news ",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TextSpan(
              text: "Click Here",
              style: TextStyle(
                color: Env.colors.leafGreen,
                fontFamily: 'Nunito',
                fontSize: 17,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.to(() => NewsView());
                },
            ),
            TextSpan(
              text:
                  " about the crypto field, not just that you can read and share news with others if you like!",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }

  Container heading5(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Get the current status of top 100 crypto coins ',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TextSpan(
              text: "Click Here",
              style: TextStyle(
                color: Env.colors.leafGreen,
                fontFamily: 'Nunito',
                fontSize: 17,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Get.to(() => AllCoinsView());
                },
            ),
            TextSpan(
              text:
                  ", along with details like Current Price, Market Cap, All time high/low etc of each coin.",
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
      ),
    );
  }

  Column heading4(BuildContext context) {
    return Column(
      children: [
        Container(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "You can add your all crypto investment ",
                    style: Theme.of(context).textTheme.bodyText1),
                TextSpan(
                  text: "Click Here ",
                  style: TextStyle(
                    color: Env.colors.leafGreen,
                    fontFamily: 'Nunito',
                    fontSize: 17,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.to(
                        () => HomeView(),
                      );
                    },
                ),
                TextSpan(
                  text: " in-order to track at one place.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                TextSpan(
                  text:
                      " Your crucial and valuable data is stored only on your device (local storage) and not in a third party service, so it's totally secure!",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                TextSpan(
                  text:
                      " However, because it is stored in your local storage on one specific device, you cannot access it from another device.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ),
        Container(
          child: RichText(
            text: TextSpan(
              text:
                  "*The actual price of the coin may vary depending on the services, but the overall price is pretty close!",
              style: TextStyle(
                color: Colors.pinkAccent,
                fontFamily: 'Nunito',
                fontSize: 16,
              ),
            ),
          ),
        )
      ],
    );
  }

  Container heading3(BuildContext context) {
    return Container(
        child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
              text:
                  "It is designed and developed to bring all your cryptocurrency investments into one place.",
              style: Theme.of(context).textTheme.bodyText1),
          TextSpan(
              text:
                  "If you invest in different platforms at times, it becomes quite problematic to track your each investment over time, hence ",
              style: Theme.of(context).textTheme.bodyText1),
          TextSpan(
              text: "Your Coin ", style: Theme.of(context).textTheme.bodyText1),
          TextSpan(
            text: "is here to solve this problem.",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    ));
  }

  Container heading2(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text:
                "Your Coin is a one stop platform for all your cryptocurrency investments!",
            style: Theme.of(context).textTheme.bodyText1,
          )
        ]),
      ),
    );
  }

  Container mainHeading(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          text: "What is Your Coin? And How to use it!",
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
    );
  }
}
