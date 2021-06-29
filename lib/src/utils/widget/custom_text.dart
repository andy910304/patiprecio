import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class CustomText extends StatelessWidget {
  final String name;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  final bool useI18n;

  const CustomText(
    this.name, {
    this.style,
    this.overflow,
    this.textAlign,
    this.useI18n = true,
  });

  @override
  Widget build(BuildContext context) {
    Text widget = Text(
      name,
      textAlign: this.textAlign,
      style: this.style ?? Theme.of(context).textTheme.bodyText1,
    );

    return this.useI18n ? widget.tr() : widget;
  }
}
