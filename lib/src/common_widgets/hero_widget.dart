import 'package:flutter/material.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/values_manager.dart';

import '../theme_manager/asset_image_icon_manager.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 215,
      margin: const EdgeInsets.symmetric(
        vertical: AppMargin.m30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s18),
        image: const DecorationImage(
          image: AssetImage(
            '${AssetImageIconManager.assetPath}/hero_image.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
