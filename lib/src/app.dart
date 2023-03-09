import 'package:flutter/material.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/authentication/data/data_user_account_local.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/authentication/presentation/sign_up_screen.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/authentication/presentation/sign_up_upload_photo_screen.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/like_you/presentation/explore_people_screen.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/like_you/presentation/people_loved_screen.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/like_you/presentation/people_profile_screen.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/theme_data_manager.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  bool isRegister = false;

  isUserRegister() async {
    isRegister = await UserAccountRegister.getUserAccountRegister();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    isUserRegister();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: getApplicationThemeData(),
      home: isRegister ? ExplorePeopleScreen() : SignUpScreen(),
     
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
