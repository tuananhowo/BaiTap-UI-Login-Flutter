import 'package:bai_tap_ui_login/theme/color.dart';
import 'package:flutter/material.dart';

class TextStyleThemeData {
  static const fontSize24FontWeight700 = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: ColorThemeData.colorBlack);
  static const fontSize16FontWeight700 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: ColorThemeData.colorBlack);
  static const fontSize16FontWeight400 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: ColorThemeData.colorBlack);
  static const fontSize12FontWeight700 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      color: ColorThemeData.colorBlack);
  static const fontSize12FontWeight400 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: ColorThemeData.colorBlack);
  static final fontSize12WithOpacity05 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: ColorThemeData.colorBlack.withOpacity(0.5),
  );
}
