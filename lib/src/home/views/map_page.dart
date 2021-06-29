import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:patiprecios/src/utils/widget/custom_bottom_navigation_bar.dart';
import 'package:patiprecios/src/utils/widget/input_widget.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          padding: EdgeInsets.only(left: 20.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        title: Input(
          hintText: 'Buscar ubicación',
          filled: true,
          borderColor: Colors.white,
        ),
      ),
      body: _GoogleMaps(),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: -1,
      ),
    );
  }
}

class _GoogleMaps extends StatefulWidget {
  @override
  __GoogleMapsState createState() => __GoogleMapsState();
}

class __GoogleMapsState extends State<_GoogleMaps> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    final CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(-33.4642299, -70.6586239),
      zoom: 14.4746,
    );

    return GoogleMap(
      mapType: MapType.normal,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }
}
