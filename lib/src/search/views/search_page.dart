import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patiprecios/src/utils/widget/custom_bottom_navigation_bar.dart';
import 'package:patiprecios/src/utils/widget/input_widget.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SearchFragmentState();
  }
}

class _SearchFragmentState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: 1,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Input(
                        hintText: 'Buscar',
                      ),
                    ),
                    IconButton(
                        icon: SvgPicture.asset(
                          'assets/svg/search_icon.svg',
                        ),
                        onPressed: () {
                          Navigator.of(context).pushNamed('advancedsearch');
                        })
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Búsquedas recientes',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, i) {
                        return Container(
                          padding: EdgeInsets.only(top: 10.0),
                          child: ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image(
                                fit: BoxFit.fill,
                                width: 55,
                                height: 55,
                                image: AssetImage('assets/images/image_19.jpg'),
                              ),
                            ),
                            title: Text('Nombre del Producto',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(color: Colors.grey)),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
