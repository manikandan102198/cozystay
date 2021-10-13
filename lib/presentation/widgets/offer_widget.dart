import '../../common/message_constant.dart';
import '../../common/widget_constant.dart';
import '../themes/app_color.dart';
import 'package:flutter/material.dart';
import '../themes/theme_text.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({Key? key, required this.height}) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: height * 0.20,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, i) {
            return Container(
              width: 350.0,
              margin: const EdgeInsets.all(5.0),
              decoration: WidgetConstant.kRecentlyViewedDecoration,
              child: Row(children: [
                Image.asset('assets/images/sale_offer.png'),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Car parking',
                        style: textTheme.mediumBlackText1,
                      ),
                      Container(
                        width: 200.0,
                        child: Text(
                          '${MessageConstant.msg}',
                          style: textTheme.smallBlackSubtitle1,
                          maxLines: 3,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Container(
                        width: 150.0,
                        height: 30.0,
                        decoration: WidgetConstant.kRecentlyViewedDecoration
                            .copyWith(color: AppColor.RoseColor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('Use code', style: textTheme.mediumBlackText),
                            Icon(
                              Icons.copy,
                              size: 10,
                            ),
                            Text('FJHF5885', style: textTheme.mediumBlackText),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]),
            );
          }),
    );
  }
}
