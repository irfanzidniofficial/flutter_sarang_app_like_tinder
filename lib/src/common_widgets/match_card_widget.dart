import 'package:flutter/material.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/asset_image_icon_manager.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/color_manager.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/values_manager.dart';

import 'glass_card_widget.dart';

class MatchCardWidget extends StatelessWidget {
  const MatchCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                '${AssetImageIconManager.assetPath}/people_love2_image.png',
              ),
            ),
            border: Border.all(
              width: 10.0,
              color: ColorManager.secondary,
              strokeAlign: StrokeAlign.inside,
            ),
            borderRadius: BorderRadius.circular(AppSize.s70),
          ),
        ),
        const GlassCardWidget(),
      ],
    );
  }
}
