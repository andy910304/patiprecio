import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patiprecios/src/home/views/location_page.dart';
import 'package:patiprecios/src/utils/widget/custom_appbar.dart';
import 'package:patiprecios/src/utils/widget/custom_bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
        appBar: CustomAppbar(),
        body: LocationFragment(),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: 0,
        ),
      ),
    );
  }
}
