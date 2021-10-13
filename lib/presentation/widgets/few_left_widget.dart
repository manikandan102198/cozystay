import 'package:flutter/material.dart';

import '../themes/theme_text.dart';

class FewLeftWidget extends StatelessWidget {
  const FewLeftWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: 30,
      width: 75,
      child: CustomPaint(
        size: Size(35, (85 * 0.4666666666666667).toDouble()),
        painter: FewLeftCustomPainter(),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            'Few Left',
            style: textTheme.mediumRedText,
          ),
        ),
      ),
    );
  }
}

class FewLeftCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width * 0.7739889, 0);
    path_0.arcToPoint(Offset(size.width * 0.8000000, size.height * 0.05573810),
        radius: Radius.elliptical(
            size.width * 0.02601111, size.height * 0.05573810),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.8000000, size.height * 0.05573810);
    path_0.arcToPoint(Offset(size.width * 0.5593444, size.height * 0.5714286),
        radius:
            Radius.elliptical(size.width * 0.2406556, size.height * 0.5156905),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(0, size.height * 0.5714286);
    path_0.arcToPoint(Offset(0, size.height * 0.5714286),
        radius: Radius.elliptical(0, 0),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(0, 0);
    path_0.arcToPoint(Offset(0, 0),
        radius: Radius.elliptical(0, 0),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xfffff01a).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
