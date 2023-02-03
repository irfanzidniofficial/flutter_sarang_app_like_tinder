import 'package:flutter/material.dart';
import 'package:flutter_sarang_app_like_tinder/src/common_widgets/logo_widget.dart';

import '../theme_manager/asset_image_icon_manager.dart';

class ExplorePeopleAppBarWidget extends StatelessWidget {
  const ExplorePeopleAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                '${AssetImageIconManager.assetPath}/user_image.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const LogoWidget(),
        Container(
          width: 24.0,
          height: 24.0,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              '${AssetImageIconManager.assetPath}/icon_notification.png',
            ),
          )),
        )
      ],
    );
  }
}
