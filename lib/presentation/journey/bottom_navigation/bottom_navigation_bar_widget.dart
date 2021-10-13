import 'package:flutter/material.dart';

import '../../themes/theme_text.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    var width = MediaQuery.of(context).size.width;
    return CustomPaint(
      size: Size(width, (width * 0.25335557975668554).toDouble()),
      painter: BottomCustomPainter(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home),
              Text(
                'Home',
                style: textTheme.mediumBlackText,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.explore),
              Text(
                'Explore',
                style: textTheme.mediumBlackText,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.card_membership),
              Text(
                'Members',
                style: textTheme.mediumBlackText,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person),
              Text(
                'Profile',
                style: textTheme.mediumBlackText,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class BottomCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9980104, size.height * 0.9999816);
    path_0.lineTo(size.width * 0.001896531, size.height * 0.9999816);
    path_0.lineTo(size.width * 0.001896531, size.height * 0.3804271);
    path_0.lineTo(0, size.height * 0.3804271);
    path_0.lineTo(0, 0);
    path_0.lineTo(size.width * 0.3120550, 0);
    path_0.arcToPoint(Offset(size.width * 0.3632497, size.height * 0.2020666),
        radius:
            Radius.elliptical(size.width * 0.05119470, size.height * 0.2020666),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width * 0.3632497, size.height * 0.2145580);
    path_0.cubicTo(
        size.width * 0.3806535,
        size.height * 0.4667922,
        size.width * 0.4367373,
        size.height * 0.6412859,
        size.width * 0.5012822,
        size.height * 0.6412859);
    path_0.cubicTo(
        size.width * 0.5659434,
        size.height * 0.6412859,
        size.width * 0.6221180,
        size.height * 0.4661493,
        size.width * 0.6394101,
        size.height * 0.2131527);
    path_0.lineTo(size.width * 0.6394101, size.height * 0.2020666);
    path_0.arcToPoint(Offset(size.width * 0.6906048, 0),
        radius:
            Radius.elliptical(size.width * 0.05119470, size.height * 0.2020666),
        rotation: 0,
        largeArc: false,
        clockwise: true);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width, size.height * 0.3804271);
    path_0.lineTo(size.width * 0.9980104, size.height * 0.3804271);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xffffffff).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
