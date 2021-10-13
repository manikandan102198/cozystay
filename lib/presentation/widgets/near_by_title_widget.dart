import 'package:flutter/material.dart';

import '/presentation/themes/app_color.dart';
import '../themes/theme_text.dart';

class NearByTitleWidget extends StatelessWidget {
  const NearByTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            'Nearby Properties',
            style: textTheme.mediumBlackText,
          ),
        ),
        Container(
          width: 50,
          height: 20,
          margin: const EdgeInsets.all(5.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColor.organeColor,
              borderRadius: BorderRadius.circular(5.0)),
          child: Text(
            'See All',
            style: textTheme.mediumWhiteText,
          ),
        ),
      ],
    );
  }
}
