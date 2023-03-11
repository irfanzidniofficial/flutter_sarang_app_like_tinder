import 'package:flutter/material.dart';
import 'package:flutter_sarang_app_like_tinder/src/common_widgets/custom_bottom_widget.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/like_you/data/data_dummy_widget.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/like_you/domain/user.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/values_manager.dart';

import '../../../common_widgets/people_identity_widget.dart';
import '../../../common_widgets/profile_detail_image_widget.dart';

class PeopleProfileScreen extends StatelessWidget {
  static const String routeName = '/people-profile';
  const PeopleProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)?.settings.arguments as User;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileDetailImageWidget(
              imagePath: user.imagePath,
            ),
            const SizedBox(
              height: AppSize.s30,
            ),
            PeopleIdentityWidget(
              user: user,
            ),
            Container(
              height: 80.0,
              margin: const EdgeInsets.only(
                left: AppMargin.m24,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final hobby = dataHobbyDummy[index];
                  return Container(
                    width: 120.0,
                    height: 80.0,
                    margin: const EdgeInsets.only(
                      right: AppMargin.m16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        AppSize.s18,
                      ),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          hobby,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: dataHobbyDummy.length,
              ),
            ),
            const SizedBox(
              height: AppSize.s40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppPadding.p24,
              ),
              child: CustomButtonWidget(title: 'Chat Now', onTap: () {}),
            ),
            const SizedBox(
              height: AppSize.s40,
            ),
          ],
        ),
      ),
    );
  }
}
