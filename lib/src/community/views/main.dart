import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';
import 'package:patiprecios/src/utils/widget/circle_image.dart';
import 'package:patiprecios/src/utils/widget/custom_bottom_navigation_bar.dart';
import 'package:patiprecios/src/utils/widget/custom_button.dart';
import 'package:patiprecios/src/utils/widget/custom_text.dart';
import 'package:patiprecios/src/utils/widget/custom_transparent_appbar.dart';

class MainCommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.blueberry,
      ),
      child: Scaffold(
        backgroundColor: AppColors.blueberry,
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: 3,
        ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0))),
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.only(top: 70.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: CustomText(
                        'community.communities',
                        style: Theme.of(context).textTheme.headline3?.copyWith(
                              color: Color(0xff3b3b3b),
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: CustomText(
                        'community.near',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.separated(
                    itemCount: 10,
                    itemBuilder: (context, val) => communityItem(context, val),
                    separatorBuilder: (context, index) => Divider(),
                  ),
                ),
                CustomButton.makeBlueberryButton(
                  'community.create',
                  onPressed: () {
                    Navigator.pushNamed(context, 'newcommunity');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget communityItem(BuildContext context, val) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
            maxRadius: 40,
            backgroundImage: AssetImage('assets/images/image_7.jpg')),
        SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                'dummy.community.name',
                style: Theme.of(context).textTheme.headline6,
              ),
              CustomText(
                'community.type.private',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                'Est officia adipisicing ex commodo ex. Dolore duis Lorem proident pariatur ullamco labore pariatur fugiat. Lorem qui incididunt sit nostrud.',
                style: Theme.of(context).textTheme.caption,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textWidthBasis: TextWidthBasis.parent,
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CustomText(
                      '99 members',
                      style: Theme.of(context).textTheme.caption,
                      useI18n: false,
                    ),
                  ),
                  CustomText(
                    '100 pubs.',
                    style: Theme.of(context).textTheme.caption,
                    useI18n: false,
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
            ],
          ),
        ),
        CustomButton.makeBlueberryButton('generic.see',
            onPressed: () => Navigator.pushNamed(context, 'community'))
      ],
    );
  }
}
