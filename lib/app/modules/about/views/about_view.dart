import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/theme_service.dart';
import 'package:your_coin/app/global/firebase/controllers/firabse_auth.dart';

import 'package:your_coin/app/modules/about/controllers/about_controller.dart';
import 'package:your_coin/app/modules/about/views/info.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text('Setting'),
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                // leading: Icon(Icons.wb_sunny),
                title: Text(
                  'Dark Mode',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                trailing: IconButton(
                  onPressed: () {
                    controller.changeTheme();
                    print(ThemeService().isSaveDarkMode());
                  },
                  icon: !ThemeService().isSaveDarkMode()
                      ? Icon(
                          Icons.wb_sunny,
                          color: Theme.of(context).colorScheme.primary,
                        )
                      : Icon(
                          Icons.nightlight_round,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Card(
              elevation: 2,
              child: ListTile(
                // leading: Icon(CupertinoIcons.question),
                title:
                    Text('About', style: Theme.of(context).textTheme.bodyText2),
                trailing: IconButton(
                  onPressed: () {
                    Get.to(() => Info());
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Card(
              elevation: 2,
              child: ListTile(
                title: Text(
                  'Sign Out',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.logout,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  color: Colors.grey,
                  onPressed: () {
                    FirebaseAuthController firebaseAuthController =
                        FirebaseAuthController();
                    firebaseAuthController.signOut();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
