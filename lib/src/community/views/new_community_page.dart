import 'package:flutter/material.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';
import 'package:patiprecios/src/utils/widget/custom_bottom_navigation_bar.dart';

class NewCommunityPage extends StatefulWidget {
  @override
  _NewCommunityPageState createState() => _NewCommunityPageState();
}

class _NewCommunityPageState extends State<NewCommunityPage> {
  String radioItem = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.primaryDark,
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
      ),
      body: Stack(
        children: [
          background(context, size),
          _content(context, size),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: -1,
      ),
    );
  }

  Widget background(BuildContext context, Size size) {
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.primaryDark,
    );
  }

  Widget _content(BuildContext context, Size size) {
    return SingleChildScrollView(
        physics: PageScrollPhysics(),
        child: Column(
          children: [
            SafeArea(
                child: Container(
              height: 20.0,
            )),
            Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0))),
                child: Container(
                  padding: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'Nueva Comunidad',
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1.0),
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Center(
                                child: Icon(
                              Icons.add_circle,
                              color: Colors.grey,
                            )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintText: 'Nombre Comunidad',
                          hintStyle: TextStyle(fontSize: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          contentPadding: EdgeInsets.all(16),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Radio(
                                groupValue: radioItem,
                                value: 'Pública',
                                onChanged: (val) {
                                  setState(() {
                                    radioItem = val.toString();
                                  });
                                },
                              ),
                              Text('Pública')
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                groupValue: radioItem,
                                value: 'Privada',
                                onChanged: (val) {
                                  setState(() {
                                    radioItem = val.toString();
                                  });
                                },
                              ),
                              Text('Privada')
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintText: 'Ubicación',
                          hintStyle: TextStyle(fontSize: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          contentPadding: EdgeInsets.all(16),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 6,
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                          hintText: 'Descripción',
                          hintStyle: TextStyle(fontSize: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          contentPadding: EdgeInsets.all(16),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextButton(
                                onPressed: () {},
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(15.0),
                                  child: Text(
                                    'CREAR COMUNIDAD',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25.0),
                                  ),
                                  decoration: BoxDecoration(
                                      color: AppColors.primaryDark,
                                      borderRadius:
                                          BorderRadius.circular(30.0)),
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 100.0,
                      ),
                    ],
                  ),
                ))
          ],
        ));
  }
}
