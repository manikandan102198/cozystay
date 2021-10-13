import '../../common/widget_constant.dart';
import 'package:flutter/material.dart';

class PartnersWidget extends StatelessWidget {
  const PartnersWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
        height: height * 0.17,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, i) {
              return Container(
                width: width / 1.3,
                child: Stack(
                  children: [
                    Positioned(
                      left: 50,
                      bottom: 0,
                      top: 0,
                      child: Container(
                        height: 120.0,
                        width: 220.0,
                        decoration: WidgetConstant.kPatnersDecoration,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Stack(
                            children: [
                              Image.asset(
                                'assets/images/card.png',
                                fit: BoxFit.fitHeight,
                              ),
                              Positioned(
                                  top: 50,
                                  right: 20,
                                  child: Text(
                                    'Vogo',
                                    style: textTheme.headline3,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      top: 0,
                      left: 10,
                      child: Container(
                        child: Image.asset('assets/images/vogo.png'),
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
