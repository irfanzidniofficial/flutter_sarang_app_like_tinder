import 'package:flutter/material.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/asset_image_icon_manager.dart';

class MatchButtonWidget extends StatelessWidget {
  const MatchButtonWidget({
    super.key,
    this.dimension = 50.0,
    required this.iconPath,
    required this.onTap,
  });

  final double dimension;
  final String iconPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: dimension,
        height: dimension,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              '${AssetImageIconManager.assetPath}/iconPath',
            ),
          ),
        ),
      ),
    );
  }
}
