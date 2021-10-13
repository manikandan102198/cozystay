import 'package:flutter/material.dart';

import 'icon_widget.dart';
import '/common/widget_constant.dart';

class CoinWidget extends StatelessWidget {
  const CoinWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      width: 65,
      child: Stack(
        children: [
          IconWidget(
            image: 'coins',
          ),
          Positioned(
            top: 25,
            left: 25,
            child: Container(
              height: 16,
              width: 36,
              alignment: Alignment.center,
              decoration: WidgetConstant.kCoinDecoration,
              child: Text(
                '5000',
                style: textTheme.subtitle2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
