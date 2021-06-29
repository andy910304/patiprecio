import 'package:flutter/material.dart';
import 'package:patiprecios/src/utils/widget/custom_no_scrollable_grid.dart';

class UserPublications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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

    /* Card(
          color: Colors.transparent,
          elevation: 0,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('publication');
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(item),
                    fit: BoxFit.cover,
                  )),
            ),
          ))*/

    List<Widget> cards = [];
    for (var item in _listItems) {
      cards.add(GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed('publication');
        },
        child: Container(
            width: 50,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(item),
                  fit: BoxFit.cover,
                ))),
      ));
    }

    //TODO:Terminar de arreglar el grid
    return NoScrollableGrid(
      children: cards,
      padding: EdgeInsets.all(5.0),
      gap: 15,
      columnCount: 4,
    );
  }
}
