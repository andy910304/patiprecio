import 'package:flutter/material.dart';
import 'package:patiprecios/src/community/views/community_members_page.dart';
import 'package:patiprecios/src/community/views/community_page.dart';
import 'package:patiprecios/src/community/views/main.dart';
import 'package:patiprecios/src/community/views/new_community_page.dart';
import 'package:patiprecios/src/home/views/font_test.dart';
import 'package:patiprecios/src/home/views/home_page.dart';
import 'package:patiprecios/src/product/views/comments_page.dart';

import 'package:patiprecios/src/login/views/change_password_confirmation_page.dart';
import 'package:patiprecios/src/login/views/change_password_page.dart';
import 'package:patiprecios/src/login/views/login_page.dart';
import 'package:patiprecios/src/login/views/newaccount_page.dart';
import 'package:patiprecios/src/login/views/newacctount_pagetwo.dart';
import 'package:patiprecios/src/login/views/remember_password_page.dart';
import 'package:patiprecios/src/login/views/welcome_page.dart';
import 'package:patiprecios/src/product/views/new_product_page.dart';
import 'package:patiprecios/src/product/views/product_page.dart';

import 'package:patiprecios/src/login/views/splashscreen_page.dart';
import 'package:patiprecios/src/home/views/map_page.dart';
import 'package:patiprecios/src/profile/views/followers_list_page.dart';
import 'package:patiprecios/src/profile/views/profile_page.dart';
import 'package:patiprecios/src/search/views/advanced_search_page.dart';
import 'package:patiprecios/src/search/views/search_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'splashpage': (BuildContext context) => SplashScreenPage(),
    'welcome': (BuildContext context) => WelcomePage(),
    'home': (BuildContext context) => HomePage(),
    'publication': (BuildContext context) => PublicacionPage(),
    'community': (BuildContext context) => CommunityPage(),
    'login': (BuildContext context) => LoginPage(),
    'newaccount': (BuildContext context) => NewAccountPageOne(),
    'newaccount2': (BuildContext context) => NewAccountPageTwo(),
    'profile': (BuildContext context) => ProfilePage(),
    'newcommunity': (BuildContext context) => NewCommunityPage(),
    'advancedsearch': (BuildContext context) => AdvancedSearchPage(),
    'comments': (BuildContext context) => CommentsPage(),
    'communitymembers': (BuildContext context) => CommunityMembersPage(),
    'communities': (BuildContext context) => MainCommunityPage(),
    'rememberpassword': (BuildContext context) => RememberPasswordPage(),
    'changepassword': (BuildContext context) => ChangePasswordPage(),
    'followerslist': (BuildContext context) => FollowersListPage(),
    'changepasswordconfirmation': (BuildContext context) =>
        ChangePasswordConfirmationPage(),
    'map': (BuildContext context) => MapPage(),
    'search': (BuildContext context) => SearchPage(),
    'newproduct': (BuildContext context) => NewProductPage(),
    'fonttest': (BuildContext context) => FontTestPage(),
  };
}
