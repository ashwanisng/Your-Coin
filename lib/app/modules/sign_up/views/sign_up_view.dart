import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';
import 'package:your_coin/app/enviroment/widgets/custom_buttons.dart';
import 'package:your_coin/app/global/firebase/controllers/firabse_auth.dart';
import 'package:your_coin/app/modules/sign_in/views/sign_in_view.dart';

import 'package:your_coin/app/modules/sign_up/controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
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
                          "Create a New Account!",
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
                          "Create an account so you can manage your crypto currency",
                          style: TextStyle(
                            color: Env.colors.primaryGray,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Nunito',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: TextFormField(
                        controller: controller.nameController,
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
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Env.colors.primaryGray),
                          labelText: 'Name',
                          labelStyle: TextStyle(
                              color: Theme.of(context).colorScheme.primary),
                          prefixIcon: Icon(
                            CupertinoIcons.person,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(height: 15),
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
                          hintStyle: TextStyle(color: Env.colors.primaryGray),
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
                          controller: controller.passwordController,
                          obscureText: controller.isVisible.value,
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
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    )
                                  : Icon(
                                      CupertinoIcons.eye_fill,
                                      color:
                                          Theme.of(context).colorScheme.primary,
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
                              "SIGN UP",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    color: Env.colors.white,
                                    fontFamily: 'Nunito',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 2.0,
                                  ),
                            ),
                            onTap: () {
                              // TODO SIGNUP Function

                              value.signUpWithEmailAndPassword(
                                  controller.emailController.text,
                                  controller.passwordController.text);
                            },
                            color: Theme.of(context).colorScheme.primary,
                            borderColor: Env.colors.white,
                          ),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    GetBuilder<FirebaseAuthController>(
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
                                  "Sign up with Google",
                                  style: TextStyle(
                                    color:
                                        Theme.of(context).colorScheme.primary,
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
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 8),
                      child: Row(
                        children: [
                          Text(
                            "Already a member?",
                            style: TextStyle(
                                color: Env.colors.primaryGray, fontSize: 18),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(() => SignInView());
                            },
                            child: Text(
                              "Login",
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
        ),
      ),
    );
  }
}
