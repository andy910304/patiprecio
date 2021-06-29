import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function? onTap;
  final Function? onChanged;
  final TextEditingController? controller;
  final bool autofocus;
  final Color borderColor;
  final TextInputType keyboardType;
  final int maxLines;
  final TextAlign textAlign;
  final bool filled;
  final Color fillColor;

  Input({
    required this.hintText,
    this.suffixIcon,
    this.prefixIcon,
    this.onTap,
    this.onChanged,
    this.autofocus = false,
    this.borderColor = Colors.grey,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.maxLines = 1,
    this.textAlign = TextAlign.start,
    this.filled = false,
    this.fillColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: this.keyboardType,
      maxLines: maxLines,
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
        filled: filled,
        fillColor: fillColor,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 1, color: borderColor),
        ),
        hintStyle: TextStyle(fontSize: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(width: 1, color: borderColor),
        ),
        contentPadding: EdgeInsets.all(16),
      ),
    );
  }
}
