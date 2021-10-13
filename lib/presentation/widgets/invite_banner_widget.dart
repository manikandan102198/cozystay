import '../../common/message_constant.dart';
import '../themes/app_color.dart';
import 'package:flutter/material.dart';

import 'button_widget.dart';
import '../themes/theme_text.dart';

class InviteBannerWidget extends StatelessWidget {
  const InviteBannerWidget({Key? key, required this.height}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorTheme = Theme.of(context);
    return Container(
      color: colorTheme.primaryColor,
      height: height * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Invite your friends now!',
            textAlign: TextAlign.center,
            style: textTheme.headline4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(7.0),
                  child: Text('${MessageConstant.msg}',
                      maxLines: 5, style: textTheme.mediumWhiteText),
                ),
              ),
              ButtonWidget(
                title: 'Refer Now',
                color: AppColor.lightRedColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}
