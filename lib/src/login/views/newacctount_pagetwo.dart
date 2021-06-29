import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';
import 'package:patiprecios/src/utils/widget/custom_transparent_appbar.dart';

class NewAccountPageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: TransparentAppBar(
          backgroundColor: Colors.transparent,
          primaryColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _logo(),
                  SizedBox(
                    height: 50.0,
                  ),
                  _paginado(),
                  SizedBox(
                    height: 50.0,
                  ),
                  _formulario(context)
                ],
              ),
            ),
          ),
        ));
  }

  Widget _logo() {
    return Column(
      children: [
        Image(
          image: AssetImage(
            'assets/images/patiprecios_icon_only.jpg',
          ),
          height: 150.0,
          width: 150.0,
        ),
        Text('Crear cuenta',
            style: AppTypography.headline3.copyWith(color: AppColors.darkBlue)),
        Text(
          'Ingresa los datos de tu cuenta',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          'Patiprecios',
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }

  Widget _formulario(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hemos enviado un código de 4 digitos al número: +5353722454',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              height: 70,
              width: 70,
              child: Center(
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                  ],
                  style: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  textInputAction: TextInputAction.next,
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.grey),
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              height: 70,
              width: 70,
              child: Center(
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                  ],
                  style: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  textInputAction: TextInputAction.next,
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.grey),
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              height: 70,
              width: 70,
              child: Center(
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                  ],
                  style: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  textInputAction: TextInputAction.next,
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.grey),
                  borderRadius: BorderRadius.circular(100)),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              height: 70,
              width: 70,
              child: Center(
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                  ],
                  style: TextStyle(
                      color: AppColors.darkBlue,
                      fontSize: 48.0,
                      fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  textInputAction: TextInputAction.done,
                ),
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.0, color: Colors.grey),
                  borderRadius: BorderRadius.circular(100)),
            )
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('home');
            },
            child: Container(
              width: 400,
              padding: EdgeInsets.symmetric(vertical: 15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                color: AppColors.darkBlue,
              ),
              child: Center(
                child: Text(
                  'REGISTRAR',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
              ),
            )),
      ],
    );
  }

  Widget _paginado() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Paso 1',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 7.0,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          SizedBox(
            width: 50.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Paso 2',
                  style: TextStyle(
                      color: AppColors.darkBlue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 7.0,
                  color: AppColors.darkBlue,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
