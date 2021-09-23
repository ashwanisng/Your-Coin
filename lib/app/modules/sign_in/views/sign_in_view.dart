import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';
import 'package:your_coin/app/enviroment/widgets/custom_buttons.dart';
import 'package:your_coin/app/global/firebase/controllers/firabse_auth.dart';
import 'package:your_coin/app/modules/home/views/home_view.dart';

import 'package:your_coin/app/modules/sign_in/controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Container(
                    child: Text(
                      "Welcome Back!",
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Container(
                    child: Text(
                      "I am so happy to see. You can continue to Login",
                      style: TextStyle(
                        color: Env.colors.primaryGray,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Nunito',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextFormField(
                    controller: controller.emailController,
                    style: TextStyle(
                      color: Env.colors.black,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w500,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary),
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
                      hintText: 'Email',
                      hintStyle: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                      prefixIcon: Icon(
                        CupertinoIcons.mail,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Obx(
                    () => TextFormField(
                      obscureText: controller.isVisible.value,
                      controller: controller.passwordController,
                      style: TextStyle(
                        color: Env.colors.black,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.primary),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                              width: 2.0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        fillColor: Color(0xFFF4F5F8),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Env.colors.primaryGray),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                        prefixIcon: Icon(
                          CupertinoIcons.lock,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.tooglePassword();
                            print(controller.isVisible);
                          },
                          icon: controller.isVisible.value
                              ? Icon(
                                  Icons.visibility_off_rounded,
                                  color: Theme.of(context).colorScheme.primary,
                                )
                              : Icon(
                                  CupertinoIcons.eye_fill,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                        ),
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GetBuilder<FirebaseAuthController>(
                    builder: (value) => CustomButton(
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
                        // TODO Login Function

                        // Get.to(HomeView());

                        value.signInWithEmailAndPassword(
                            controller.emailController.text,
                            controller.passwordController.text);
                      },
                      color: Theme.of(context).colorScheme.primary,
                      borderColor: Env.colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                GetBuilder<FirebaseAuthController>(
                  init: FirebaseAuthController(),
                  builder: (value) => GestureDetector(
                    onTap: () {
                      value.googleSignInMethod();
                    },
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          // border: Border.all(color: borderColor),
                          color: Colors.white,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/images/google.png',
                              height: 25,
                            ),
                            Text(
                              "Sign in with Google",
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Row(
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                            color: Env.colors.primaryGray, fontSize: 18),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed('/sign-up');
                        },
                        child: Text(
                          "Signup",
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
