import 'package:flutter/material.dart';

import 'app_color.dart';

class ThemeText {
  const ThemeText._();

  static TextStyle _headline4 = TextStyle(
    fontSize: 27,
    color: Colors.white,
    letterSpacing: 1.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle _headline6 = TextStyle(
    fontSize: 19,
    color: Colors.white,
    letterSpacing: 2.5,
    fontWeight: FontWeight.bold,
  );

  static TextStyle _headline2 = TextStyle(
    fontSize: 19,
    color: AppColor.yellow,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _headline5 = TextStyle(
    fontSize: 23,
    color: AppColor.yellow,
    fontWeight: FontWeight.w600,
  );

  static TextStyle _blackSubtitle1 = TextStyle(
    fontSize: 17,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );

  static TextStyle _blackSubtitle2 = TextStyle(
    fontSize: 10,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _blackHeadLine3 = TextStyle(
    fontSize: 23,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );

  static TextStyle _brownBodyText1 = TextStyle(
    fontSize: 21,
    color: AppColor.brownColor,
    fontWeight: FontWeight.bold,
  );

  static TextStyle _geryBodyText2 = TextStyle(
    fontSize: 17,
    color: AppColor.greyColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle _smallCation = TextStyle(
    fontSize: 10,
    color: Colors.black,
    fontWeight: FontWeight.normal,
  );

  static TextStyle _buttonText = TextStyle(
    fontSize: 9,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  static getTextTheme() {
    return TextTheme(
        headline6: _headline6,
        headline5: _headline5,
        headline4: _headline4,
        headline2: _headline2,
        headline3: _blackHeadLine3,
        caption: _smallCation,
        button: _buttonText,
        subtitle1: _blackSubtitle1,
        subtitle2: _blackSubtitle2,
        bodyText1: _brownBodyText1,
        bodyText2: _geryBodyText2);
  }
}

extension ThemeTextExtension on TextTheme {
  TextStyle get smallBlackSubtitle1 =>
      subtitle1!.copyWith(fontWeight: FontWeight.normal, fontSize: 11);

  TextStyle get smallBlackText2 =>
      subtitle1!.copyWith(fontWeight: FontWeight.w500, fontSize: 10);

  TextStyle get smallBlackText => caption!.copyWith(fontSize: 9);

  TextStyle get mediumBlackText =>
      subtitle1!.copyWith(fontWeight: FontWeight.w500, fontSize: 13);

  TextStyle get mediumRedText => subtitle1!.copyWith(
      color: AppColor.redColor, fontWeight: FontWeight.w500, fontSize: 13);

  TextStyle get mediumWhiteText => subtitle1!
      .copyWith(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  TextStyle get mediumBlackText1 =>
      subtitle1!.copyWith(fontWeight: FontWeight.w500, fontSize: 15);

  TextStyle get smallBrownBodyText1 => bodyText1!.copyWith(fontSize: 15);
}
