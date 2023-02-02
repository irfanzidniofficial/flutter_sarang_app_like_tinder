import 'package:flutter/material.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/color_manager.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/font_manager.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/style_manager.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/values_manager.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            AppSize.s50,
          ),
          gradient: LinearGradient(
            colors: [
              ColorManager.pink,
              ColorManager.purple,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          title,
          style: getWhiteTextStyle(
            fontWeight: FontWeightManager.semibold,
          ),
        ),
      ),
    );
  }
}
