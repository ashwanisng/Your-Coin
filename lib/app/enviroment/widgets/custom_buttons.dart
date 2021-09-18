import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Text buttonName;
  final Function()? onTap;
  final Color color;
  final Color borderColor;
  CustomButton(
      {required this.buttonName,
      required this.onTap,
      required this.color,
      required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          border: Border.all(color: borderColor),
          color: color,
        ),
        child: Center(child: buttonName),
      ),
    );
  }
}
