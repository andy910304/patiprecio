import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patiprecios/src/utils/widget/custom_bottom_navigation_bar.dart';
import 'package:patiprecios/src/utils/widget/custom_text.dart';
import 'package:patiprecios/src/utils/widget/custom_transparent_appbar.dart';

class FontTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: 4,
        ),
        body: SafeArea(
          child: Column(
            children: [
              CustomText('headline1',
                  style: Theme.of(context).textTheme.headline1),
              CustomText('headline2',
                  style: Theme.of(context).textTheme.headline2),
              CustomText('headline3',
                  style: Theme.of(context).textTheme.headline3),
              CustomText('headline4',
                  style: Theme.of(context).textTheme.headline4),
              CustomText('headline5',
                  style: Theme.of(context).textTheme.headline5),
              CustomText('headline6',
                  style: Theme.of(context).textTheme.headline6),
              CustomText('subtitle1',
                  style: Theme.of(context).textTheme.subtitle1),
              CustomText('subtitle2',
                  style: Theme.of(context).textTheme.subtitle2),
              CustomText('bodyText1',
                  style: Theme.of(context).textTheme.bodyText1),
              CustomText('bodyText2',
                  style: Theme.of(context).textTheme.bodyText2),
              CustomText('BUTTON', style: Theme.of(context).textTheme.button),
              CustomText('caption', style: Theme.of(context).textTheme.caption),
              CustomText('overline',
                  style: Theme.of(context).textTheme.overline),
              SizedBox(
                height: 50.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
