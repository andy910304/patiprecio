import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patiprecios/src/providers/ui_provider.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';
import 'package:provider/provider.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;

  CustomBottomNavigationBar({required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 1.0,
      child: Container(
        height: 70.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0)),
            boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.0)]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            IconButton(
                icon: SvgPicture.asset(
                  'assets/svg/home.svg',
                  width: 30.0,
                  height: 30.0,
                  color: currentIndex == 0
                      ? AppColors.mainBarIconDark
                      : AppColors.mainBarIcon,
                ),
                onPressed: () {
                  if (currentIndex != 0)
                    Navigator.of(context).pushReplacementNamed('home');
                }),
            IconButton(
                icon: SvgPicture.asset(
                  'assets/svg/search.svg',
                  width: 30.0,
                  height: 30.0,
                  color: currentIndex == 1
                      ? AppColors.mainBarIconDark
                      : AppColors.mainBarIcon,
                ),
                onPressed: () {
                  if (currentIndex != 1)
                    Navigator.of(context).pushReplacementNamed('search');
                }),
            TextButton(
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  width: 90,
                  child: SvgPicture.asset(
                    'assets/svg/add_product.svg',
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('newproduct');
                }),
            TextButton(
                style: ButtonStyle(
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  width: 50,
                  height: 50,
                  child: SvgPicture.asset(
                    'assets/svg/communities.svg',
                    color: currentIndex == 3
                        ? AppColors.mainBarIconDark
                        : AppColors.mainBarIcon,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('communities');
                }),
            /*IconButton(
                icon: Container(
                  color: Colors.red,
                  child: SvgPicture.asset(
                    'assets/svg/communities.svg',
                    color: currentIndex == 3
                        ? AppColors.mainBarIconDark
                        : AppColors.mainBarIcon,
                  ),
                ),
                onPressed: () {
                  if (currentIndex != 3)
                    Navigator.of(context).pushReplacementNamed('communities');
                }),*/
            IconButton(
                icon: SvgPicture.asset(
                  'assets/svg/cart.svg',
                  color: currentIndex == 4
                      ? AppColors.mainBarIconDark
                      : AppColors.mainBarIcon,
                  width: 30.0,
                  height: 30.0,
                ),
                onPressed: () {
                  if (currentIndex != 4)
                    Navigator.of(context).pushReplacementNamed('fonttest');
                }),
          ],
        ),
      ),
    );
  }
}
