import 'package:flutter/material.dart';

import 'coin_widget.dart';
import 'icon_widget.dart';
import '/common/widget_constant.dart';
import '../themes/theme_text.dart';

class CozyStayAppWidget extends StatelessWidget {
  const CozyStayAppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(5.0),
      height: height * 0.1,
      decoration: WidgetConstant.kAppBarDecoration,
      child: Row(
        children: [
          Row(
            children: [
              IconWidget(
                image: 'gobal',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Location',
                    style: textTheme.smallBlackSubtitle1,
                  ),
                  Row(
                    children: [
                      Text(
                        'Bangaluru',
                        style: textTheme.subtitle1,
                      ),
                      Icon(Icons.keyboard_arrow_down_outlined)
                    ],
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          CoinWidget(),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_none_outlined)),
        ],
      ),
    );
  }
}
