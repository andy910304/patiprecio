import 'package:flutter/material.dart';
import 'package:patiprecios/src/utils/constants/theme.dart';

class CustomProgressIndicator extends StatefulWidget {
  @override
  _CustomProgressIndicatorState createState() =>
      _CustomProgressIndicatorState();
}

class _CustomProgressIndicatorState extends State<CustomProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> progress;
  @override
  void initState() {
    controller = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 1500));

    progress = Tween(begin: 0.0, end: 100.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, _) {
          controller.repeat();

          return Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.white,
            height: 20,
            child: CustomPaint(
              painter: _CustomProgressPainter(progress.value),
            ),
          );
        },
      ),
    );
  }
}

class _CustomProgressPainter extends CustomPainter {
  double progress;
  _CustomProgressPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint()
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round
      ..color = AppColors.rose
      ..style = PaintingStyle.stroke;

    canvas.drawLine(Offset(0, 0), Offset(size.width, 0), paint);
    paint.color = AppColors.yellowSea;
    canvas.drawLine(
        Offset(size.width * (progress / 100), 0), Offset(size.width, 0), paint);
    paint.color = AppColors.blueberry;
    if (size.width - size.width * (progress / 65) > 0)
      canvas.drawLine(Offset(size.width * (progress / 65), 0),
          Offset(size.width, 0), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
