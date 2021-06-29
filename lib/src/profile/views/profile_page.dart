import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patiprecios/src/profile/views/user_publications_page.dart';
import 'package:patiprecios/src/profile/views/user_purchases_page.dart';

import 'package:patiprecios/src/utils/constants/theme.dart';
import 'package:patiprecios/src/utils/widget/custom_bottom_navigation_bar.dart';
import 'package:patiprecios/src/utils/widget/custom_transparent_appbar.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.darkBlue,
        elevation: 0,
        brightness: Brightness.light,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.red,
            statusBarIconBrightness: Brightness.light),
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
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: -1,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            background(context, size),
            _content(context, size),
          ],
        ),
      ),
    );
  }

  Widget background(BuildContext context, Size size) {
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.darkBlue,
    );
  }

  Widget _content(BuildContext context, Size size) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
            child: Container(
              height: 20.0,
            ),
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50.0),
                width: size.width,
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: Container(
                  padding: EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      _userInfo(),
                      SizedBox(
                        height: 15.0,
                      ),
                      _actionButtons(),
                      SizedBox(
                        height: 15.0,
                      ),
                      _communityInfo(),
                      SizedBox(
                        height: 40.0,
                      ),
                      _tabs(),
                    ],
                  ),
                ),
              ),
              _avatar(context, size),
            ],
          ),
        ],
      ),
    );
  }

  Widget _avatar(BuildContext context, Size size) {
    return Positioned(
        left: size.width / 2 - 50,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/photo_male_5.jpg'),
          maxRadius: 50,
        ));
  }

  Widget _communityInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed('followerslist'),
          child: Column(
            children: [
              Text(
                '300',
                style: AppTypography.headline4
                    .copyWith(fontFamily: AppTypography.fontMontserrat),
              ),
              Text(
                'Seguidores',
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: Colors.black,
                    ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.black,
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          width: 1.0,
          height: 65.0,
        ),
        GestureDetector(
          onTap: () => Navigator.of(context).pushNamed('followerslist'),
          child: Column(
            children: [
              Text(
                '200',
                style: AppTypography.headline4
                    .copyWith(fontFamily: AppTypography.fontMontserrat),
              ),
              Text(
                'Seguidos',
                style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: Colors.black,
                    ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.black,
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          width: 1.0,
          height: 65.0,
        ),
        Column(
          children: [
            Text(
              '100',
              style: AppTypography.headline4
                  .copyWith(fontFamily: AppTypography.fontMontserrat),
            ),
            Text(
              'Publicaciones',
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    color: Colors.black,
                  ),
            )
          ],
        ),
      ],
    );
  }

  Widget _userInfo() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nombre Apellido',
              style: AppTypography.headline4.copyWith(
                  fontFamily: AppTypography.fontMontserrat,
                  color: AppColors.headlinesColor),
            ),
            SizedBox(
              width: 5.0,
            ),
            SvgPicture.asset(
              'assets/svg/verification-symbol.svg',
              width: 25.0,
              height: 25.0,
            )
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Text(
                  'VALORACIÓN',
                  style: AppTypography.caption,
                )),
            _valoracion(5.0),
          ],
        )
      ],
    );
  }

  Widget _valoracion(double d) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Color(0xffFFA400),
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFA400),
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFA400),
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFA400),
        ),
        Icon(
          Icons.star,
          color: Color(0xffFFA400),
        ),
      ],
    );
  }

  Widget _actionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
            icon: Icon(
              Icons.speaker_notes_outlined,
              size: 40.0,
              color: AppColors.primaryDark,
            ),
            onPressed: () {}),
        TextButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.all(10.0),
              width: 100,
              decoration: BoxDecoration(
                  color: AppColors.primaryDark,
                  borderRadius: BorderRadius.circular(30.0)),
              child: Center(
                child: Text(
                  'Seguir',
                  style: AppTypography.button.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )),
        IconButton(
            icon: Icon(
              Icons.share_outlined,
              size: 40.0,
              color: AppColors.primaryDark,
            ),
            onPressed: () {}),
      ],
    );
  }

  Widget _tabs() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TabBar(
          unselectedLabelColor: Colors.grey[500],
          labelColor: AppColors.headlinesColor,
          labelStyle: AppTypography.headline6.copyWith(fontSize: 16),
          indicatorColor: Colors.transparent,
          indicatorSize: TabBarIndicatorSize.tab,
          labelPadding: EdgeInsets.all(0),
          indicatorPadding: EdgeInsets.all(0),
          tabs: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(
                          color: Colors.grey,
                          width: 1,
                          style: BorderStyle.solid))),
              child: Tab(child: Text('Mis Publicaciones')),
            ),
            Container(
              width: double.infinity,
              child: Tab(child: Text('Compras')),
            ),
          ],
          controller: _tabController,
        ),
        Container(
          height: 1000,
          child: TabBarView(
            children: [UserPublications(), UserPurchases()],
            controller: _tabController,
          ),
        ),
      ],
    );
  }
}
