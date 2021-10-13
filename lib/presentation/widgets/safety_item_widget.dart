import 'package:flutter/material.dart';

import '/common/widget_constant.dart';
import '/data/model/safety_model.dart';
import '../themes/theme_text.dart';

class SafetyItemWidget extends StatelessWidget {
  const SafetyItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SafetyModel> safety = [
      SafetyModel(
          icon: 'hand-sanitizer', title: 'Thermal Scanners on Entry and Exit'),
      SafetyModel(icon: 'thermometers', title: 'Paperless Documentation'),
      SafetyModel(
          icon: 'no_house_visit',
          title: 'Regular Sanitization on all properties'),
    ];
    final colorTheme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.15,
      child: Row(
        children: [
          Container(
            width: width / 1.9,
            margin: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: colorTheme.primaryColor,
            ),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/security.png',
                  width: 65,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '5 Step',
                          style: textTheme.bodyText1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2.0, right: 2.0),
                          child: Text(
                            'Safety',
                            style: textTheme.smallBrownBodyText1,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Measures',
                      style: textTheme.smallBrownBodyText1,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: width / 2.3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: safety.length,
                itemBuilder: (context, i) {
                  return Stack(
                    children: [
                      Container(
                        width: 100,
                        margin: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 60.0,
                              decoration: BoxDecoration(
                                color: colorTheme.primaryColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(7),
                                    topRight: Radius.circular(7)),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.all(2.0),
                              decoration: WidgetConstant.kBottomTextDecoration,
                              child: Text(
                                '${safety[i].title}',
                                textAlign: TextAlign.center,
                                style: textTheme.smallBlackText2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          top: -6.0,
                          right: 30.0,
                          left: 30.0,
                          child: Image.asset(
                            'assets/icons/${safety[i].icon}.png',
                          )),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
