import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';
import 'package:patiprecios/src/utils/widget/custom_bottom_navigation_bar.dart';
import 'package:patiprecios/src/utils/widget/custom_button.dart';
import 'package:patiprecios/src/utils/widget/custom_transparent_appbar.dart';
import 'package:patiprecios/src/utils/widget/input_widget.dart';

class NewProductPage extends StatelessWidget {
  const NewProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: arreglar comportamiento del Status Bar
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: TransparentAppBar(
          backgroundColor: Colors.white,
          primaryColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: -1,
        ),
        body: SafeArea(child: NewProductBody()),
      ),
    );
  }
}

class NewProductBody extends StatefulWidget {
  @override
  _NewProductBodyState createState() => _NewProductBodyState();
}

class _NewProductBodyState extends State<NewProductBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Nueva Publicación',
                textAlign: TextAlign.center,
                style: AppTypography.headline4,
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Agregar Foto',
                        style: TextStyle(color: Color(0xff8E8E8E)),
                      ),
                      Icon(Icons.add_circle, color: Color(0xff8E8E8E))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Texto pequenno de ejemplo',
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Input(
                hintText: 'Titulo',
              ),
              SizedBox(
                height: 20.0,
              ),
              Input(
                hintText: 'Precio',
              ),
              SizedBox(
                height: 20.0,
              ),
              Input(
                hintText: 'Categoría',
              ),
              SizedBox(
                height: 20.0,
              ),
              Input(
                hintText: 'Nuevo/Usado',
              ),
              SizedBox(
                height: 20.0,
              ),
              Input(
                hintText: 'Ubicación',
              ),
              SizedBox(
                height: 20.0,
              ),
              Input(
                hintText: 'Descripción',
                maxLines: 6,
              ),
              SizedBox(
                height: 20.0,
              ),
              Input(
                hintText: 'Tags',
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomButton(
                      'SIGUIENTE',
                      buttonColor: AppColors.accentDark,
                      textColor: Colors.white,
                      elevation: 0,
                      onPressed: () {
                        print('click');
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
