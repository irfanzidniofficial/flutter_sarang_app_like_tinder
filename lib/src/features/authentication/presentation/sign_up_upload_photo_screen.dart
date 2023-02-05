import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_sarang_app_like_tinder/src/common_widgets/custom_bottom_widget.dart';
import 'package:flutter_sarang_app_like_tinder/src/common_widgets/custom_text_button_widget.dart';
import 'package:flutter_sarang_app_like_tinder/src/common_widgets/logo_and_tagline_widget.dart';
import 'package:flutter_sarang_app_like_tinder/src/common_widgets/upload_photo_widget.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/like_you/presentation/explore_people_screen.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/font_manager.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/style_manager.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/values_manager.dart';
import 'package:flutter_sarang_app_like_tinder/src/utils/image_picker_util.dart';

class SignUpUploadPhotoScreen extends StatefulWidget {
  static const String routeName = '/sign-up-upload-photo';
  const SignUpUploadPhotoScreen({super.key});

  @override
  State<SignUpUploadPhotoScreen> createState() =>
      _SignUpUploadPhotoScreenState();
}

class _SignUpUploadPhotoScreenState extends State<SignUpUploadPhotoScreen> {
  File? image;

  void getImageProfile(getImageFrom source) async {
    final result = await ImagePickerUtil.getImage(source);
    if (result != null) {
      setState(() {
        image = File(result.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p24,
          vertical: AppPadding.p40,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const LogoAndTagLineWidget(),
              const SizedBox(
                height: AppSize.s50,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.all(
                          AppPadding.p24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              onPressed: () {
                                getImageProfile(getImageFrom.camera);
                              },
                              icon: const Icon(
                                Icons.camera,
                                size: AppSize.s50,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                getImageProfile(getImageFrom.gallery);
                              },
                              icon: const Icon(
                                Icons.photo,
                                size: AppSize.s50,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: UploadPhotoWidget(
                  image: image,
                ),
              ),
              const SizedBox(
                height: 53.0,
              ),
              Text(
                'Irfan',
                style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f22,
                  fontWeight: FontWeightManager.semibold,
                ),
              ),
              const SizedBox(
                height: AppSize.s4,
              ),
              Text(
                '22 Lawyer',
                style: getBlack30TextStyle(
                  fontSize: FontSizeManager.f16,
                ),
              ),
              const SizedBox(
                height: 150.0,
              ),
              CustomButtonWidget(
                title: 'Update My Profile',
                onTap: () {},
              ),
              const SizedBox(height: 20.0),
              CustomTextButtonWidget(
                title: 'Skip for Now',
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ExplorePeopleScreen.routeName,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
