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
                            color: Env.colors.primaryDarkIndigo,
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
                            borderSide:
                                BorderSide(color: Env.colors.primaryDarkIndigo),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Env.colors.primaryDarkIndigo,
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
                          labelStyle:
                              TextStyle(color: Env.colors.primaryDarkIndigo),
                          prefixIcon: Icon(
                            CupertinoIcons.person,
                            color: Env.colors.primaryDarkIndigo,
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
                            borderSide:
                                BorderSide(color: Env.colors.primaryDarkIndigo),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Env.colors.primaryDarkIndigo,
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
                          labelStyle:
                              TextStyle(color: Env.colors.primaryDarkIndigo),
                          prefixIcon: Icon(
                            CupertinoIcons.mail,
                            color: Env.colors.primaryDarkIndigo,
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: TextFormField(
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
                                  color: Env.colors.primaryDarkIndigo),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Env.colors.primaryDarkIndigo,
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
                            labelStyle:
                                TextStyle(color: Env.colors.primaryDarkIndigo),
                            prefixIcon: Icon(
                              CupertinoIcons.lock,
                              color: Env.colors.primaryDarkIndigo,
                            ),
                            suffixIcon: Icon(
                              CupertinoIcons.eye_fill,
                              color: Env.colors.primaryDarkIndigo,
                            )),
                        keyboardType: TextInputType.visiblePassword,
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
                            color: Env.colors.primaryDarkIndigo,
                            borderColor: Env.colors.white,
                          ),
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {},
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
                                  color: Env.colors.primaryDarkIndigo,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ],
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
                                color: Env.colors.primaryDarkIndigo,
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
