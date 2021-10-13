import 'few_left_widget.dart';
import 'package:flutter/material.dart';
import '/common/widget_constant.dart';

import '../themes/theme_text.dart';

class PropertiesItemsWidget extends StatelessWidget {
  const PropertiesItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    var height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.28,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 2,
          itemBuilder: (context, i) {
            return Container(
              width: 280.0,
              margin: const EdgeInsets.all(7.0),
              decoration: WidgetConstant.kRecentlyViewedDecoration,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/plat.png',
                        fit: BoxFit.fitWidth,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cozy stay bangaluru',
                                style: textTheme.mediumBlackText1,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Cozy Stay New York City',
                                  style: textTheme.caption,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  '2.2 Km from your location',
                                  style: textTheme.smallBlackText,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                '₹ 2,140',
                                style: textTheme.headline5,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  '37 people watching',
                                  style: textTheme.smallBlackText,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(top: 20, left: 10, child: FewLeftWidget()),
                ],
              ),
            );
          }),
    );
  }
}
