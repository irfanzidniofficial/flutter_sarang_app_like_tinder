import 'package:flutter/material.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/authentication/presentation/sign_up_screen.dart';
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
      initialRoute: SignUpScreen.routeName,
      routes: {
        SignUpScreen.routeName: ((context) => const SignUpScreen()),
      },
    );
  }
}
