import 'package:flutter/material.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/authentication/presentation/sign_up_upload_photo_screen.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/like_you/presentation/explore_people_screen.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/like_you/presentation/people_loved_screen.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/like_you/presentation/people_profile_screen.dart';
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
      debugShowCheckedModeBanner: false,
      initialRoute: SignUpScreen.routeName,
      routes: {
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SignUpUploadPhotoScreen.routeName: (context) =>
            const SignUpUploadPhotoScreen(),
        ExplorePeopleScreen.routeName: (context) => const ExplorePeopleScreen(),
        PeopleLoveScreen.routeName: (context) => const PeopleLoveScreen(),
        PeopleProfileScreen.routeName: (context) => const PeopleProfileScreen(),
      },
    );
  }
}
