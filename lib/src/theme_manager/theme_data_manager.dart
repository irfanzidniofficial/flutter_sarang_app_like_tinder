import 'package:flutter/material.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/color_manager.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/font_manager.dart';

ThemeData getApplicationThemeData() {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorManager.primary,
      elevation: 0,
    ),
    fontFamily: FontFamilyConstatnt.fontFamily,
  );
}
