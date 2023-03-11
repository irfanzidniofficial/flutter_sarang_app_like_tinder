import 'package:flutter/material.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/like_you/domain/user.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/color_manager.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/values_manager.dart';

import 'glass_card_widget.dart';

class MatchCardWidget extends StatelessWidget {
  const MatchCardWidget({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                user.imagePath,
              ),
            ),
            border: Border.all(
              width: 10.0,
              color: ColorManager.secondary,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
            borderRadius: BorderRadius.circular(AppSize.s70),
          ),
        ),
        GlassCardWidget(
          user: user,
        ),
      ],
    );
  }
}
