import 'package:flutter/material.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/asset_image_icon_manager.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/theme_data_manager.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: getApplicationThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Image.asset(
            '${AssetImageIconManager.assetPath}/hobby1_image.png',
          ),
        ),
      ),
    );
  }
}
