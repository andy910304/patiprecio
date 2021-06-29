import 'package:flutter/material.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';
import 'package:patiprecios/src/utils/widget/custom_button.dart';

class RememberPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
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
                Text('Recordar contraseña',
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                        color: AppColors.darkBlue,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Ingresa los datos de tu cuenta para recuperar la contraseña',
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
                        decoration: InputDecoration(
                          hintText: 'My.email@gmail.com',
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
                              Icon(
                                Icons.person,
                                color: Colors.grey,
                              ),
                              Text(
                                'Email',
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
                                .pushReplacementNamed('changepassword');
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
