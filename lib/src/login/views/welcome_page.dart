import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.darkBlue,
      ),
      child: Scaffold(
        backgroundColor: AppColors.darkBlue,
        body: Stack(
          children: [_otrosElementos(context, size)],
        ),
      ),
    );
  }

  Widget _otrosElementos(BuildContext context, Size size) {
    return Positioned(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Container()),
            Container(
                width: 320.0,
                height: 320.0,
                child: Image(image: AssetImage('assets/images/logo-1.png'))),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'start.welcome',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Colors.white),
              // TextStyle(
              //     color: Colors.white,
              //     fontSize: 18.0,
              //     fontFamily: 'Montserrat'),

              textAlign: TextAlign.left,
            ).tr(),
            SizedBox(
              height: 20.0,
            ),
            TextButton(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: AppColors.yellowSea),
                  child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text('start.start',
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  ?.copyWith(color: Colors.black)
                              // TextStyle(
                              //     color: Colors.black,
                              //     fontSize: 20.0,
                              //     fontFamily: 'Varela Round'),
                              )
                          .tr()),
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('login');
                })
          ],
        ),
      ),
    );
  }
}
