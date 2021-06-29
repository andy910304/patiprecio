import 'package:flutter/material.dart';

import 'package:patiprecios/src/utils/widget/input_widget.dart';

class AdvancedSearchPage extends StatefulWidget {
  @override
  _AdvancedSearchPageState createState() => _AdvancedSearchPageState();
}

class _AdvancedSearchPageState extends State<AdvancedSearchPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _listItems = [
    'assets/images/image_1.jpg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.jpg',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
    'assets/images/image_6.jpg',
    'assets/images/image_7.jpg',
    'assets/images/image_8.jpg',
    'assets/images/image_9.jpg',
    'assets/images/image_1.jpg',
    'assets/images/image_2.jpg',
    'assets/images/image_3.jpg',
    'assets/images/image_4.jpg',
    'assets/images/image_5.jpg',
    'assets/images/image_6.jpg',
    'assets/images/image_7.jpg',
    'assets/images/image_8.jpg',
    'assets/images/image_9.jpg',
  ];

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  size: 30.0,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'Búsqueda Avanzada',
                  style: Theme.of(context).textTheme.headline3,
                )
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            Input(
              hintText: 'Buscar',
            ),
            SizedBox(
              height: 25.0,
            ),
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              labelStyle:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              indicatorSize: TabBarIndicatorSize.tab,
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'Productos',
                ),
                Tab(
                  text: 'Usuarios',
                ),
                Tab(
                  text: 'Categorías',
                ),
                Tab(
                  text: 'Comunidades',
                ),
              ],
              controller: _tabController,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      children: _listItems
                          .map((item) => Card(
                              color: Colors.transparent,
                              elevation: 0,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, 'home');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: AssetImage(item),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                              )))
                          .toList(),
                    ),
                  ),
                  Container(
                    child: (Text('Usuarios')),
                  ),
                  Container(
                    child: (Text('Categorías')),
                  ),
                  Container(
                    child: (Text('Comunidad')),
                  )
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
