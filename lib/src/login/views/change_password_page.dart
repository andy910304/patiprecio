import 'package:flutter/material.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';
import 'package:patiprecios/src/utils/widget/custom_button.dart';

class ChangePasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/images/patiprecios_icon_only.jpg'),
                  width: 200,
                  height: 200,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text('Cambiar contraseña',
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Ingresa tu nueva contraseña. Debe tener más de 8 caracteres',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.grey,
                      ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40.0,
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(width: 1.0, color: Colors.grey)),
                      child: TextField(
                        style: TextStyle(
                            color: AppColors.darkBlue, fontSize: 32.0),
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Positioned(
                        left: 20.0,
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0, right: 5.0),
                          color: Colors.white,
                          child: Row(
                            children: [
                              Text(
                                'Nueva contraseña',
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
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          border: Border.all(width: 1.0, color: Colors.grey)),
                      child: TextField(
                        style: TextStyle(
                            color: AppColors.darkBlue, fontSize: 32.0),
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Positioned(
                        left: 20.0,
                        child: Container(
                          padding: EdgeInsets.only(left: 10.0, right: 5.0),
                          color: Colors.white,
                          child: Row(
                            children: [
                              Text(
                                'Repite tu nueva contraseña',
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
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          'SIGUIENTE',
                          buttonColor: AppColors.darkBlue,
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed('changepasswordconfirmation');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
