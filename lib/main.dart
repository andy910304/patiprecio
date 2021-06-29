import 'package:flutter/material.dart';
import 'package:patiprecios/src/routes/routes.dart';

import 'package:patiprecios/src/utils/constants/theme.dart';

import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: [
        Locale('en'),
        Locale('es'),
      ],
      fallbackLocale: Locale('en'),
      path: 'assets/translations',
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'splashpage',
      routes: getApplicationRoutes(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.black,
          fontFamily: 'VarelaRound',
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: TextTheme(headline6: AppTypography.headline5),
          ),
          textTheme: AppTypography.textTheme),
    );
  }
}
