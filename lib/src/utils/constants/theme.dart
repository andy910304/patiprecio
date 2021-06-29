import 'dart:ui';
import 'package:flutter/material.dart';

class AppColors {
  // brand colors
  static const Color yellowSea = Color(0xFFFFAE00);
  static const Color rose = Color(0xFFFF0062); // Not exact. maybe Winter Sky?
  static const Color blueberry = Color(0xFF6852F0);
  static const Color darkBlue = Color(0xFF202060);

  // colors by nouns
  static const Color energy = yellowSea;
  static const Color strength = rose;
  static const Color trust = blueberry;
  static const Color confidence = darkBlue;

  static const Color primary = Color(0xFF1976D2); // not being used
  static const Color primaryDark = Color(0xFF6852F0); // this is not primary
  static const Color primaryLight = Color(0xFF1E88E5); // not beign used
  static const Color accent = Color(0xFFFF4081); // not being used
  static const Color accentDark = Color(0xFFF50057);
  static const Color accentLight = Color(0xFFFF80AB); // not being used

  // grays for main icons
  static const Color mainBarIcon = Color(0xFFBEBEBE);
  static const Color mainBarIconDark = Color(0xFF707070);

  static const Color headlinesColor = Color(0xff3B3B3B);
}

class AppTypography {
  static const String fontVarelaRound = 'VarelaRound';
  static const String fontMontserrat = 'Montserrat';

  static const headline1 = TextStyle(
    fontFamily: fontVarelaRound,
    fontWeight: FontWeight.w300,
    fontSize: 80,
    letterSpacing: -1.5,
    color: Colors.black,
  );

  static const headline2 = TextStyle(
    fontFamily: fontVarelaRound,
    fontWeight: FontWeight.w300,
    fontSize: 62,
    letterSpacing: -0.5,
    color: Colors.black,
  );

  static const headline3 = TextStyle(
    fontFamily: fontVarelaRound,
    fontWeight: FontWeight.w400,
    fontSize: 50,
    color: Colors.black,
  );

  static const headline4 = TextStyle(
    fontFamily: fontVarelaRound,
    fontWeight: FontWeight.w400,
    fontSize: 35,
    letterSpacing: 0.25,
    color: Colors.black,
  );

  static const headline5 = TextStyle(
    fontFamily: fontVarelaRound,
    fontWeight: FontWeight.w400,
    fontSize: 25,
    color: Colors.black,
  );

  static const headline6 = TextStyle(
    fontFamily: fontVarelaRound,
    fontWeight: FontWeight.w500,
    fontSize: 21,
    letterSpacing: 0.15,
    color: Colors.black,
  );

  static const subtitle1 = TextStyle(
    fontFamily: fontVarelaRound,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0.15,
  );

  static const subtitle2 = TextStyle(
    fontFamily: fontVarelaRound,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 0.1,
  );

  static const bodytext1 = TextStyle(
    fontFamily: fontMontserrat,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: 0.5,
  );

  static const bodytext2 = TextStyle(
    fontFamily: fontMontserrat,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.25,
  );

  static const button = TextStyle(
    fontFamily: fontMontserrat,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 1.25,
  );

  static const caption = TextStyle(
    fontFamily: fontMontserrat,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.4,
  );

  static const overline = TextStyle(
    fontFamily: fontMontserrat,
    fontWeight: FontWeight.w400,
    fontSize: 10,
    letterSpacing: 1.5,
  );

  static const TextTheme textTheme = TextTheme(
    headline1: headline1,
    headline2: headline2,
    headline3: headline3,
    headline4: headline4,
    headline5: headline5,
    headline6: headline6,
    subtitle1: subtitle1,
    subtitle2: subtitle2,
    bodyText1: bodytext1,
    bodyText2: bodytext2,
    button: button,
    caption: caption,
    overline: overline,
  );
}
