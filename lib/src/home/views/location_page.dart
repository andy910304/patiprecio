import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:patiprecios/src/home/views/best_sellers_page.dart';
import 'package:patiprecios/src/home/views/nearby_page.dart';
import 'package:patiprecios/src/home/views/suggestions_page.dart';

class LocationFragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<LocationFragment>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //TODO: acomodar el dise;o de los tabs segun el mockup issue 57 index 3
              TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Color(0xff3b3b3b),
                isScrollable: true,
                indicatorWeight: 2,
                indicatorColor: Color(0xff3b3b3b),
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: 'CERCA DE TI',
                  ),
                  Tab(
                    text: 'SUGERENCIAS',
                  ),
                  Tab(
                    text: 'LO MÁS VENDIDO',
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: TabBarView(
                  dragStartBehavior: DragStartBehavior.down,
                  children: [CercaPage(), SugerenciasPage(), MasVendidosPage()],
                  controller: _tabController,
                ),
              ),
            ],
          ),
        ));
  }
}
