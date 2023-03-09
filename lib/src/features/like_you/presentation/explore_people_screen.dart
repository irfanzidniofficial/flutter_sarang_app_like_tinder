import 'package:flutter/material.dart';
import 'package:flutter_sarang_app_like_tinder/src/common_widgets/explore_people_app_bar_widget.dart';
import 'package:flutter_sarang_app_like_tinder/src/common_widgets/explore_people_button_widget.dart';
import 'package:flutter_sarang_app_like_tinder/src/common_widgets/match_card_widget.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/authentication/data/data_user_account_local.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/authentication/domain/user_account.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/values_manager.dart';

class ExplorePeopleScreen extends StatefulWidget {
  static const String routeName = '/explore-people';
  const ExplorePeopleScreen({super.key});

  @override
  State<ExplorePeopleScreen> createState() => _ExplorePeopleScreenState();
}

class _ExplorePeopleScreenState extends State<ExplorePeopleScreen> {
  UserAccount? account;

  getDataUserAccount() async {
    final data = await DataUserAccountLocal.getDataUserAccountFromStorage();

    final result = UserAccount.fromMap(data);
    account = result;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getDataUserAccount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p24,
          vertical: AppPadding.p40,
        ),
        child: Column(
          children: [
            ExplorePeopleAppBarWidget(
              imagePath: account?.imageProfile,
            ),
            const SizedBox(
              height: AppSize.s40,
            ),
            Expanded(
              child: Column(
                children: const [
                  Expanded(
                    child: MatchCardWidget(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSize.s40,
            ),
            const ExplorePeopleButtonWidget(),
          ],
        ),
      ),
    );
  }
}
