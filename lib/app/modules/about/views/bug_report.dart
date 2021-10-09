import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';
import 'package:your_coin/app/enviroment/widgets/custom_buttons.dart';
import 'package:your_coin/app/global/firebase/controllers/firabse_auth.dart';
import 'package:your_coin/app/modules/about/controllers/about_controller.dart';

class BugReport extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bug Report"),
      ),
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              child: TextFormField(
                controller: controller.bugTitleController,
                style: TextStyle(
                  color: Env.colors.black,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  fillColor: Color(0xFFF4F5F8),
                  hintText: 'Title',
                  hintStyle: TextStyle(color: Env.colors.primaryGray),
                  labelText: 'Bug Title',
                  labelStyle:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                  prefixIcon: Icon(
                    Icons.report,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ),
          // SizedBox(height:),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              child: TextFormField(
                controller: controller.bugDescriptionController,
                style: TextStyle(
                  color: Env.colors.black,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1.0),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  fillColor: Color(0xFFF4F5F8),
                  hintText: 'Detailed Description',
                  hintStyle: TextStyle(color: Env.colors.primaryGray),
                  labelText: 'Detailed Description',
                  labelStyle:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                  prefixIcon: Icon(
                    Icons.report,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 8,
                minLines: 5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: GetBuilder<FirebaseAuthController>(
              builder: (value) => CustomButton(
                buttonName: Text(
                  "Send Report",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Env.colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.0,
                      ),
                ),
                onTap: () {
                  // TODO SIGNUP Function
                  value.sendBugReprot(
                    controller.bugTitleController.text,
                    controller.bugDescriptionController.text,
                  );
                },
                color: Theme.of(context).colorScheme.primary,
                borderColor: Env.colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Obx(
            () => controller.firebaseAuthController.isLogin.value
                ? Container(
                    child: Center(
                      child: CircularProgressIndicator(
                        color: Env.colors.leafGreen,
                      ),
                    ),
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}
