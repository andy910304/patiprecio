import 'package:flutter/material.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({Key? key}) : super(key: key);
  final double _preferredSize = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 15.0, top: 10.0),
      child: SafeArea(
        child: Row(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('profile');
              },
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/photo_female_1.jpg'),
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Expanded(
              child: Text(
                'Hola!',
                style: AppTypography.headline4.copyWith(
                    color: Color(0xff3b3b3b), fontFamily: 'Montserrat'),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.location_on,
                color: Colors.pink,
                size: 50.0,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed('map');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.notifications_none_outlined,
                size: 50.0,
                color: Color(0xff3b3b3b),
              ),
              onPressed: () {},
            ),
            SizedBox(
              width: 20.0,
            )
          ],
        ),
      ),
    );

    /*actions: [
       
        SizedBox(
          width: 25.0,
        )
      ],
    );*/
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(_preferredSize);
}
