import '../presentation/themes/app_color.dart';
import 'package:flutter/material.dart';

class WidgetConstant {
  static final kAppBarDecoration = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12), bottomRight: Radius.circular(12)),
      boxShadow: [
        BoxShadow(color: Colors.grey, blurRadius: 0.5),
      ]);

  static final kCoinDecoration = BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(color: Colors.grey, offset: Offset(5, 5), blurRadius: 0.5)
      ],
      borderRadius: BorderRadius.circular(3));

  static final kRecentlyViewedDecoration = BoxDecoration(
    color: Colors.white,
    boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 0.2)],
    borderRadius: BorderRadius.circular(5),
  );

  static final kPatnersDecoration = BoxDecoration(
    color: AppColor.yellow,
    borderRadius: BorderRadius.circular(5),
  );

  static final kBottomTextDecoration = BoxDecoration(
    color: Colors.white,
    boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 0.5)],
    borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(7), bottomRight: Radius.circular(7)),
  );
}
