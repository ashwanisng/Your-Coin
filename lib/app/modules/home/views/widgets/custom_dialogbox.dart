import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:your_coin/app/enviroment/utils/env.dart';
import 'package:your_coin/app/modules/home/controllers/home_controller.dart';

class CustomTextFormFeild extends GetView<HomeController> {
  final TextEditingController editingController;
  final String lableText;
  final String hintText;
  final TextInputType inputType;

  CustomTextFormFeild({
    required this.editingController,
    required this.hintText,
    required this.lableText,
    required this.inputType,

    // required this.onsaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: editingController,
      keyboardType: inputType,
      decoration: InputDecoration(
        labelText: lableText,
        fillColor: Env.colors.white,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Env.colors.black),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Env.colors.primaryLightIndigo),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
