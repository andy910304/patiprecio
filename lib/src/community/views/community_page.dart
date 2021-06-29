import 'package:flutter/material.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';
import 'package:patiprecios/src/utils/widget/custom_bottom_navigation_bar.dart';

class CommunityPage extends StatelessWidget {
  // const CommunityPage({Key key}) : super(key: key);

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
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: -3,
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
    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
              child: Container(
            height: 50.0,
          )),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50.0),
                width: size.width,
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
                      SizedBox(height: 20.0),
                      _actionButtons(),
                      SizedBox(height: 20.0),
                      _communityInfo(context),
                      SizedBox(height: 20.0),
                      _communityText(context)
                    ],
                  ),
                ),
              ),
              _avatar(context, size)
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
          backgroundImage: AssetImage('assets/images/image_2.jpg'),
          maxRadius: 50,
        ));
  }

  Widget _communityTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Nombre de la comunidad',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
        ),
        Text(
          'privada',
          style: TextStyle(
            fontSize: 18.0,
          ),
        )
      ],
    );
  }

  Widget _actionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            icon: Icon(
              Icons.speaker_notes,
              size: 40.0,
              color: AppColors.primaryDark,
            ),
            onPressed: () {}),
        SizedBox(
          width: 20.0,
        ),
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
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )),
        SizedBox(
          width: 10.0,
        ),
        IconButton(
            icon: Icon(
              Icons.share,
              size: 40.0,
              color: AppColors.primaryDark,
            ),
            onPressed: () {}),
      ],
    );
  }

  Widget _communityInfo(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pushNamed('communitymembers');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                '500',
                style: TextStyle(fontSize: 35, color: Colors.black),
              ),
              Text(
                'Miembros',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
          Container(
            color: Colors.black,
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            width: 2.0,
            height: 65.0,
          ),
          Column(
            children: [
              Text(
                '500',
                style: TextStyle(fontSize: 35, color: Colors.black),
              ),
              Text(
                'Miembros',
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _communityText(BuildContext context) {
    final List<String> _listItems = [
      'assets/images/image_1.jpg',
      'assets/images/image_2.jpg',
      'assets/images/image_3.jpg',
      'assets/images/image_4.jpg',
      'assets/images/image_5.jpg',
      'assets/images/image_6.jpg',
      'assets/images/image_7.jpg',
      'assets/images/image_8.jpg',
    ];
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Text(
        'Descripcion de la comunidad',
        style: TextStyle(
            color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 20.0),
      Text(
        'Ex fugiat et ipsum occaecat. Lorem proident tempor dolor veniam elit cillum Consectetur fugiat id eiusmod culpa. Esse tempor adipisicing sint ut ullamco eu tempor do cillum.Ex fugiat et ipsum occaecat. Lorem proident tempor dolor veniam elit cillum Consectetur fugiat id eiusmod culpa. Esse tempor adipisicing sint ut ull.',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 20.0),
      Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Opacity(
            opacity: 1,
            child: Column(
              children: [
                Text("Últimas Publicaciones"),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.only(top: 1.0, left: 1.0, right: 1.0),
                    height: 100,
                    width: 300,
                    child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: _listItems
                          .map((item) => Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(item),
                                      fit: BoxFit.cover,
                                    )),
                              ))
                          .toList(),
                    )),
              ],
            ),
          ),
          Opacity(
            opacity: 1,
            child: ElevatedButton(
              child: Text(
                "UNIRSE A LA COMUNIDAD",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.grey,
                primary: Colors.white,
                onSurface: Colors.grey,
                elevation: 5,
                minimumSize: Size(150, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      SizedBox(height: 150.0),
    ]);
  }
}
