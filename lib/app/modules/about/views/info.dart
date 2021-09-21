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
                child: mainHeading(),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: heading2(),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: heading3(),
              ),
              Divider(thickness: 2),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: heading4(),
              ),
              Divider(thickness: 2),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: heading5(),
              ),
              Divider(thickness: 2),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: heading6(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container heading6() {
    return Container(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "You can also get relevant and current news ",
              style: TextStyle(
                color: Env.colors.black,
                fontFamily: 'Nunito',
                fontSize: 17,
              ),
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
              style: TextStyle(
                color: Env.colors.black,
                fontFamily: 'Nunito',
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container heading5() {
    return Container(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Get the current status of top 100 crypto coins ',
              style: TextStyle(
                color: Env.colors.black,
                fontFamily: 'Nunito',
                fontSize: 17,
              ),
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
                  ",along with details like Current Price, Market Cap, All time high/low etc of each coin.",
              style: TextStyle(
                color: Env.colors.black,
                fontFamily: 'Nunito',
                fontSize: 17,
              ),
            )
          ],
        ),
      ),
    );
  }

  Column heading4() {
    return Column(
      children: [
        Container(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "You can add your all crypto investment ",
                  style: TextStyle(
                    color: Env.colors.black,
                    fontFamily: 'Nunito',
                    fontSize: 17,
                  ),
                ),
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
                  style: TextStyle(
                    color: Env.colors.black,
                    fontFamily: 'Nunito',
                    fontSize: 17,
                  ),
                ),
                TextSpan(
                  text:
                      " Your crucial and valuable data is stored only on your device (local storage) and not in a third party service, so it's totally secure!",
                  style: TextStyle(
                    color: Env.colors.black,
                    fontFamily: 'Nunito',
                    fontSize: 17,
                  ),
                ),
                TextSpan(
                  text:
                      " However, because it is stored in your local storage on one specific device, you cannot access it from another device.",
                  style: TextStyle(
                    color: Env.colors.black,
                    fontFamily: 'Nunito',
                    fontSize: 17,
                  ),
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
                fontSize: 17,
              ),
            ),
          ),
        )
      ],
    );
  }

  Container heading3() {
    return Container(
        child: RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text:
                "It is designed and developed to bring all your cryptocurrency investments into one place.",
            style: TextStyle(
              color: Env.colors.black,
              fontFamily: 'Nunito',
              fontSize: 17,
            ),
          ),
          TextSpan(
            text:
                "If you invest in different platforms at times, it becomes quite problematic to track your each investment over time, hence ",
            style: TextStyle(
              color: Env.colors.black,
              fontFamily: 'Nunito',
              fontSize: 17,
            ),
          ),
          TextSpan(
            text: "Your Coin ",
            style: TextStyle(
              color: Env.colors.primaryDarkIndigo,
              fontFamily: 'Nunito',
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: "is here to solve this problem.",
            style: TextStyle(
              color: Env.colors.black,
              fontFamily: 'Nunito',
              fontSize: 17,
            ),
          ),
        ],
      ),
    ));
  }

  Container heading2() {
    return Container(
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text:
                "Your Coin is a one stop platform for all your cryptocurrency investments!",
            style: TextStyle(
              color: Env.colors.primaryDarkIndigo,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )
        ]),
      ),
    );
  }

  Container mainHeading() {
    return Container(
      child: RichText(
        text: TextSpan(
          text: "What is Your Coin? And How to use it!",
          style: TextStyle(
            color: Env.colors.black,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
