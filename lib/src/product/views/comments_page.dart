import 'package:flutter/material.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';
import 'package:patiprecios/src/utils/widget/input_widget.dart';

class CommentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.accentDark,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          background(context, size),
          _content(context, size),
        ],
      ),
    );
  }

  Widget background(BuildContext context, Size size) {
    return Container(
      width: size.width,
      height: size.height,
      color: AppColors.accentDark,
    );
  }

  Widget _content(BuildContext context, Size size) {
    return Positioned(
        top: 150,
        child: Container(
          width: size.width,
          height: size.height - 150,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0))),
          child: Container(
            padding: EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _title(context),
                _comments(context),
                _insert(),
              ],
            ),
          ),
        ));
  }

  Widget _title(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.insert_comment,
          size: 32.0,
          color: Colors.blue,
        ),
        SizedBox(
          width: 20.0,
        ),
        Text(
          'Comentarios',
          style: Theme.of(context).textTheme.headline1,
        )
      ],
    );
  }

  Widget _comments(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemCount: 15,
          separatorBuilder: (context, index) => Divider(
                color: Colors.black,
              ),
          itemBuilder: (context, i) {
            return ListTile(
              title: Text('Usuario '),
              subtitle: Container(
                padding: EdgeInsets.only(top: 5.0),
                child: Text(
                  'Et nulla amet voluptate labore velit enim. In voluptate id veniam ad enim quis sint ut mollit elit mollit. Dolor occaecat duis eiusmod quis ea eiusmod fugiat consectetur cupidatat mollit reprehenderit consequat tempor enim. Nulla ut aute adipisicing aliqua nulla. Duis enim quis proident non adipisicing. Aliqua tempor enim ipsum officia ipsum nisi labore et quis dolore dolore adipisicing Lorem nisi.',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              trailing: Text('58 mins'),
            );
          }),
    );
  }

  Widget _insert() {
    return Container(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Input(
        hintText: 'Comentario',
        onTap: null,
      ),
    );
  }
}
