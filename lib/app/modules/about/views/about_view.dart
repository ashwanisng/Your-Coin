import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';
import 'package:your_coin/app/enviroment/utils/theme.dart';
import 'package:your_coin/app/enviroment/utils/theme_service.dart';

import 'package:your_coin/app/modules/about/controllers/about_controller.dart';
import 'package:your_coin/app/modules/about/views/info.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AboutView'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.wb_sunny),
              title: Text(
                'Dark Mode',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Env.colors.black,
                ),
              ),
              trailing: Obx(
                () => Switch(
                  value: controller.isDark.value,
                  onChanged: (value) {
                    controller.changeTheme(value);
                    print(controller.isDark);
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Card(
            elevation: 2,
            child: ListTile(
              leading: Icon(CupertinoIcons.question),
              title: Text(
                'About',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  color: Env.colors.black,
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  Get.to(() => Info());
                },
                icon: Icon(CupertinoIcons.arrow_right_square),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
