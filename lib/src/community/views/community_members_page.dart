import 'package:flutter/material.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';
import 'package:patiprecios/src/utils/widget/custom_bottom_navigation_bar.dart';
import 'package:patiprecios/src/utils/widget/custom_text.dart';

class CommunityMembersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryDark,
        elevation: 0,
        leading: Container(
          padding: EdgeInsets.only(left: 20.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: Stack(
        children: [
          background(context, size),
          _content(context, size),
          _avatar(context, size)
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: -1,
      ),
    );
  }

  Widget background(BuildContext context, Size size) {
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.primaryDark,
    );
  }

  Widget _content(BuildContext context, Size size) {
    return Positioned(
        top: 150,
        child: Container(
          width: size.width,
          height: size.height - 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0))),
          child: Container(
            padding: EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                _communityTitle(),
                _membersList(context),
              ],
            ),
          ),
        ));
  }

  Widget _avatar(BuildContext context, Size size) {
    return Positioned(
        top: 100,
        left: size.width / 2 - 50,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/image_2.jpg'),
          maxRadius: 50,
        ));
  }

  Widget _communityTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Text(
        //   'Nombre de la comunidad',
        //   style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
        // ),
        //

        CustomText(
          'community.name',
          //fontSize: 25,
          //fontFamily: AppTypography.fontVarelaRound,
          //fontWeight: FontWeight.w100, TO DO
        ),
      ],
    );
  }

  Widget _membersList(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView.separated(
          itemBuilder: (context, i) {
            return ListTile(
              dense: true,
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/photo_female_3.jpg'),
              ),
              title:
                  // Text(
                  //   'Usario $i',
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .headline4
                  //       .copyWith(color: Colors.grey),
                  // ),
                  //
                  CustomText(
                'usuario {}' + ' $i',
                //fontFamily: AppTypography.fontMontserrat,
                //fontSize: 18,
                //color: Colors.grey,
              ),
              subtitle: CustomText(
                'publicaciones',
                //fontFamily: AppTypography.fontMontserrat,
                //fontSize: 12,
              ),
              // Text('100 publicaciones'),
            );
          },
          separatorBuilder: (context, i) {
            return Divider(
              color: Colors.grey,
            );
          },
          itemCount: 10),
    ));
  }
}
