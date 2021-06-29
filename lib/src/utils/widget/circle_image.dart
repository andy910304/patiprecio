import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final double? size;
  final Color? backgroundColor;
  final ImageProvider imageProvider;

  const CircleImage({
    required this.imageProvider,
    required this.size,
    this.backgroundColor,
  }) : super();

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMediaQuery(context));

    return Container(
      width: size ?? 20.0,
      height: size ?? 20.0,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor ?? Colors.transparent,
        image: new DecorationImage(fit: BoxFit.fill, image: imageProvider),
      ),
    );
  }
}
