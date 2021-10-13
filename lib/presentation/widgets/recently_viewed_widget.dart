import '../../common/widget_constant.dart';
import 'package:flutter/material.dart';

import '../themes/theme_text.dart';
import 'button_widget.dart';

class RecentlyViewedWidget extends StatelessWidget {
  const RecentlyViewedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, i) {
            return Container(
              width: width / 1.0,
              child: Stack(
                children: [
                  Positioned(
                    left: 70,
                    bottom: 0,
                    top: 0,
                    child: Container(
                      height: 170.0,
                      width: 280.0,
                      decoration: WidgetConstant.kRecentlyViewedDecoration,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 30,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    'Cozy stay bangaluru',
                                    style: textTheme.mediumBlackText1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: Text(
                                    'Cozy Stay New York City',
                                    style: textTheme.caption,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 35,
                            right: 10,
                            child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child:
                                        Image.asset('assets/images/safe.png'),
                                  ),
                                  Text(
                                    'hygiene',
                                    style: textTheme.smallBlackSubtitle1
                                        .copyWith(color: Colors.green),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 50,
                            left: 30,
                            child: CustomPaint(
                              size: Size(width,
                                  (width * 0.23690354221602647).toDouble()),
                              painter: QuaranteedCustomPainter(),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/guarantee.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                  Text(
                                    '100% Quaranteed',
                                    style: textTheme.button,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 90,
                            left: 37,
                            child: Image.asset('assets/images/group.png'),
                          ),
                          Positioned(
                            top: 75,
                            right: 10,
                            child: Text(
                              '₹ 2,140',
                              style: textTheme.headline5,
                            ),
                          ),
                          Positioned(
                              bottom: 25,
                              left: 37,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey[300],
                                    size: 8,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text(
                                      '2.2 Km from your location',
                                      style: textTheme.smallBlackText,
                                    ),
                                  ),
                                ],
                              )),
                          Positioned(
                            bottom: 15,
                            right: 5,
                            child: ButtonWidget(
                              title: 'Continue Booking',
                              color: colorTheme.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    top: 0,
                    left: -10,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0)),
                      child: Image.asset('assets/images/hotel.png'),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class QuaranteedCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width * 0.9244193, 0);
    path_0.lineTo(size.width * 0.8607803, size.height * 0.3657214);
    path_0.lineTo(size.width * 0.9244025, size.height * 0.6809642);
    path_0.lineTo(0, size.height * 0.6809642);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Color(0xff0ace29).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
