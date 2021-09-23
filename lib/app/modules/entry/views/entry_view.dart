import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import 'package:your_coin/app/modules/entry/controllers/entry_controller.dart';

class EntryView extends GetView<EntryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: SizedBox(
                height: 200,
                width: 200,
                child: SvgPicture.asset(
                  'assets/images/rocket.svg',
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Flexible(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "YOUR COIN",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontFamily: 'Nunito',
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                  Theme.of(context).colorScheme.primary,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
