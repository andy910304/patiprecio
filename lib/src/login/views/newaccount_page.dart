import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'package:patiprecios/src/utils/constants/theme.dart';
import 'package:patiprecios/src/utils/widget/custom_transparent_appbar.dart';

class NewAccountPageOne extends StatelessWidget {
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
      children: [
        Stack(
          children: [
            Container(
                margin: EdgeInsets.all(10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    border: Border.all(width: 1.0, color: Colors.grey)),
                child: IntlPhoneField(
                  decoration: InputDecoration(
                    counterText: "",
                    border: InputBorder.none,
                  ),
                  initialCountryCode: 'IN',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                )),
            Positioned(
                left: 20.0,
                child: Container(
                  padding: EdgeInsets.only(left: 10.0, right: 5.0),
                  color: Colors.white,
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      Text(
                        'Número de teléfono',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ))
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('newaccount2');
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
                  'SIGUIENTE',
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
          )
        ],
      ),
    );
  }
}
