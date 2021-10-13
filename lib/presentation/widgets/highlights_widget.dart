import 'package:flutter/material.dart';

import '../../common/message_constant.dart';
import '../../common/widget_constant.dart';

import '../themes/theme_text.dart';

class HighlightsWidget extends StatelessWidget {
  const HighlightsWidget({Key? key, required this.height}) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: height * 0.4,
      child: GridView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1 / 2),
          itemBuilder: (context, i) {
            return Container(
              margin: const EdgeInsets.all(10.0),
              decoration: WidgetConstant.kRecentlyViewedDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/sofa.png'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          'Fully Furnished',
                          style: textTheme.mediumBlackText1,
                        ),
                      ),
                      Container(
                        width: 150.0,
                        child: Text(
                          '${MessageConstant.msg}',
                          style: textTheme.smallBlackSubtitle1,
                          maxLines: 3,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
