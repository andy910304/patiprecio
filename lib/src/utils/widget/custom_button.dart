import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final String? fontFamily;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback onPressed;
  final double? elevation;
  final bool? useI18n;

  CustomButton(
    this.title, {
    this.buttonColor,
    this.textColor,
    required this.onPressed,
    this.fontFamily,
    this.elevation = 2,
    this.useI18n = true,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: this.useI18n != null ? Text(title).tr() : Text(title),
      style: ElevatedButton.styleFrom(
        textStyle: Theme.of(context).textTheme.button,
        onPrimary: textColor,
        primary: buttonColor,
        elevation: elevation,
        minimumSize: Size(0, 40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      onPressed: onPressed,
    );
  }

  static makeBlueButton(String title) => CustomButton(
        title,
        onPressed: () {},
      );
  static makeBlueberryButton(
    String title, {
    onPressed,
  }) =>
      CustomButton(
        title,
        buttonColor: AppColors.blueberry,
        onPressed: onPressed,
      );
}
