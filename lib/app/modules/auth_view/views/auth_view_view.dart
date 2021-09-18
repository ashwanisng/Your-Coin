import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';
import 'package:your_coin/app/enviroment/widgets/custom_buttons.dart';

import 'package:your_coin/app/modules/auth_view/controllers/auth_view_controller.dart';
import 'package:your_coin/app/modules/sign_in/views/sign_in_view.dart';
import 'package:your_coin/app/modules/sign_up/views/sign_up_view.dart';

class AuthViewView extends GetView<AuthViewController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: SizedBox(
                height: 200,
                child: SvgPicture.asset(
                  'assets/images/rocket.svg',
                  color: Env.colors.primaryDarkIndigo,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "YOUR COIN",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Env.colors.primaryDarkIndigo,
                        fontFamily: 'Nunito',
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 20,
                right: 20,
              ),
              child: CustomButton(
                buttonName: Text(
                  "SIGN IN",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Env.colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.0,
                      ),
                ),
                onTap: () {
                  Get.to(() => SignInView());
                },
                color: Env.colors.primaryDarkIndigo,
                borderColor: Env.colors.white,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 40),
              child: CustomButton(
                buttonName: Text(
                  "SIGN UP",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Env.colors.primaryDarkIndigo,
                        fontFamily: 'Nunito',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.0,
                      ),
                ),
                borderColor: Env.colors.primaryDarkIndigo,
                onTap: () {
                  Get.to(() => SignUpView());
                },
                color: Env.colors.white,
              ),
            ),
            SizedBox(
              height: 60,
            )
          ],
        ),
      ),
    );
  }
}
