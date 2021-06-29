import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';

class TransparentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TransparentAppBar(
      {Key? key,
      this.backgroundColor = Colors.white,
      this.primaryColor = Colors.black,
      this.cpreferredSize = 50.0,
      this.brightness = Brightness.light})
      : super(key: key);

  final double cpreferredSize;
  final Color backgroundColor;
  final Color primaryColor;
  final Brightness brightness;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backwardsCompatibility: false,
      backgroundColor: backgroundColor,
      elevation: 0,
      brightness: brightness,
      leading: Container(
        padding: EdgeInsets.only(left: 20.0),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: primaryColor,
            size: 30.0,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(cpreferredSize);
}
