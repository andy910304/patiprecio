import 'package:flutter/material.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';

class FollowersListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: AppColors.primaryDark,
        elevation: 0,
      ),
      body: Stack(
        children: [
          background(context, size),
          _content(context, size),
        ],
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
            padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            child: Column(
              children: [
                _communityTitle(),
                _membersList(context),
              ],
            ),
          ),
        ));
  }

  Widget _communityTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Lista de seguidores',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
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
              title: Text(
                'Usario $i',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: Colors.grey),
              ),
              subtitle: Text('100 publicaciones'),
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
