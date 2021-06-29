import 'package:flutter/material.dart';
import 'package:patiprecios/src/utils/widget/custom_bottom_navigation_bar.dart';

class PublicacionPage extends StatefulWidget {
  @override
  _PublicacionPageState createState() => _PublicacionPageState();
}

class _PublicacionPageState extends State<PublicacionPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () => showDialogDenounce(context),
                child: Icon(Icons.more_vert),
              )),
        ],
      ),
      body: Stack(
        children: [
          _fondo(size),
          _imagenPublicacion(context, size),
          _nombrePublicacion(size),
          _publicacion(size, context),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: -1,
      ),
    );
  }

  Widget _imagenPublicacion(BuildContext context, Size size) {
    return Container(
      height: size.height * 0.45,
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage('assets/images/image_21.jpg'),
      ),
    );
  }

  Widget _nombrePublicacion(Size size) {
    return Positioned(
      top: size.height * 0.25,
      child: Container(
        padding: EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nombre publicacion',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Artículo nuevo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _fondo(Size size) {
    return Container(
      height: size.height,
      width: size.width,
    );
  }

//TODO: Arreglar el problema del scroll aqui
  Widget _publicacion(Size size, context) {
    return Positioned(
        top: size.height * 0.4,
        child: Container(
            width: size.width,
            height: size.height * 0.52,
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              clipBehavior: Clip.hardEdge,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: iterationsIcons(context),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Descripción',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '99.99',
                        style: TextStyle(color: Colors.grey, fontSize: 40.0),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                      'Ea nostrud ea sint Lorem. Minim voluptate quis qui et consectetur duis ea velit nostrud duis dolore reprehenderit voluptate. Culpa proident est excepteur laborum tempor cupidatat sit cupidatat anim non id.',
                      style: TextStyle(color: Colors.grey, fontSize: 16.0)),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Ubicación',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Florida Región Metropolitana',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Mapa',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      image: AssetImage('assets/images/mapa.png'),
                    ),
                  )
                ],
              ),
            )));
  }

  Widget iterationsIcons(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => showDialogCustom(context),
          child: Row(
            children: [
              _iconSet(Icons.favorite, Colors.red, 100),
              SizedBox(
                width: 10.0,
              ),
              _iconSet(Icons.stars, Colors.yellow, 100),
              SizedBox(
                width: 10.0,
              ),
              _iconSet(Icons.stars, Colors.yellow, 100),
              SizedBox(
                width: 10.0,
              ),
              _iconSet(Icons.stars, Colors.yellow, 100),
              SizedBox(
                width: 10.0,
              ),
              _iconSet(Icons.thumb_down, Colors.brown, 100),
            ],
          ),
        ),
        Row(
          children: [
            GestureDetector(
                onTap: () => Navigator.of(context).pushNamed('comments'),
                child: _iconSet(Icons.speaker_notes, Colors.blue, 100)),
            SizedBox(
              width: 10.0,
            ),
            GestureDetector(
                onTap: () => showDialogCustom(context),
                child: _iconSet(Icons.send, Colors.orange, 100)),
          ],
        )
      ],
    );
  }

  Future showDialogCustom(context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: AspectRatio(
              aspectRatio: 3 / 2,
              child: Container(
                // width: 200,
                // height: 300,
                decoration: BoxDecoration(
                  //border: Border.all(width: 1, color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white,
                ),
                //color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 40, right: 40, bottom: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.send, color: Colors.yellow),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Compartir en"),
                        ],
                      ),
                      SizedBox(height: 50),
                      Text("Comunidades"),
                      Divider(),
                      Text("Contactos"),
                      Divider(),
                      Text("Whatsapp"),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  Future showDialogDenounce(context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            child: AspectRatio(
              aspectRatio: 2 / 1,
              child: Container(
                child: Center(
                    child: GestureDetector(
                        onTap: () => showDialogCustom(context),
                        child: Text("Denunciar"))),
                decoration: BoxDecoration(
                  //border: Border.all(width: 1, color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white,
                ),
                //color: Colors.white,
              ),
            ),
          );
        });
  }

  Widget _iconSet(IconData icon, Color color, int value) {
    return Column(
      children: [
        Icon(
          icon,
          color: color,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text('$value'),
      ],
    );
  }
}
