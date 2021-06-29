import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark),
      child: Scaffold(
          body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            color: Colors.white,
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _logo(context),
                SizedBox(
                  height: 50.0,
                ),
                _formulario(context)
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget _logo(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(
            'assets/images/patiprecios_icon_only.jpg',
          ),
          height: 150.0,
          width: 150.0,
        ),
        Text(
          'welcome',
          style: Theme.of(context)
              .textTheme
              .headline3
              ?.copyWith(color: AppColors.darkBlue),
          // TextStyle(
          //     fontSize: 40.0,
          //     fontFamily: 'Montserrat',
          //     fontWeight: FontWeight.bold,
          //     color: AppColors.darkBlue),
        ).tr(),
        Text(
          'enterData',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Colors.grey),
          // TextStyle(color: Colors.grey),
        ).tr(),
        Text(
          'patiPrecios',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Colors.grey),
        ).tr()
      ],
    );
  }

  Widget _formulario(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(width: 1.0, color: Colors.grey)),
              child: TextField(
                decoration: InputDecoration(
                  hintText: tr('myEmail'),
                  hintStyle: Theme.of(context).textTheme.caption,
                  border: InputBorder.none,
                ),
              ),
            ),
            Positioned(
                left: 20.0,
                child: Container(
                  padding: EdgeInsets.only(left: 10.0, right: 5.0),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      Text(
                        'email',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.grey),

                        // style: TextStyle(color: Colors.grey),
                      ).tr()
                    ],
                  ),
                ))
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Stack(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(width: 1.0, color: Colors.grey)),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: tr('password'),
                  hintStyle: Theme.of(context).textTheme.caption,
                  border: InputBorder.none,
                ),
              ),
            ),
            Positioned(
                left: 20.0,
                child: Container(
                  padding: EdgeInsets.only(left: 10.0, right: 5.0),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      Text(
                        'password',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.grey),
                        // style: TextStyle(color: Colors.grey),
                      ).tr(),
                    ],
                  ),
                ))
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('home');
            },
            child: Container(
              width: 400,
              padding: EdgeInsets.symmetric(vertical: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: AppColors.darkBlue,
              ),
              child: Center(
                child: Text(
                  'login',
                  style: Theme.of(context).textTheme.button?.copyWith(
                        color: Colors.white,
                      ),

                  // TextStyle(
                  //     color: Colors.white,
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 25.0),
                ).tr(),
              ),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: false,
              onChanged: (valor) {},
            ),
            Text(
              'rememberPassword',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: Colors.grey),
            ).tr(),
          ],
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('rememberpassword');
          },
          child: Text(
            'forgottenPassword',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: Colors.black),
          ).tr(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  width: 100.0,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Image(
                    image: AssetImage('assets/images/google-icon.png'),
                  ),
                )),
            TextButton(
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  width: 100.0,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(50.0)),
                  child: Image(
                    image: AssetImage('assets/images/facebook-icon.png'),
                  ),
                ))
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'noAccount',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: Colors.grey),
              // style: TextStyle(fontSize: 13.0),
            ).tr(),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('newaccount');
              },
              child: Text(
                'registerFree',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(color: Colors.black),
                //style: TextStyle(fontSize: 13.0)
              ).tr(),
            )
          ],
        )
      ],
    );
  }
}
