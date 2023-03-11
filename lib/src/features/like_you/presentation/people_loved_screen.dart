import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sarang_app_like_tinder/src/common_widgets/people_love_card_widget.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/like_you/presentation/bloc/people_loved/people_loved_bloc.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/font_manager.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/style_manager.dart';
import 'package:flutter_sarang_app_like_tinder/src/theme_manager/values_manager.dart';

class PeopleLoveScreen extends StatefulWidget {
  static const String routeName = '/people-loved';
  const PeopleLoveScreen({super.key});

  @override
  State<PeopleLoveScreen> createState() => _PeopleLoveScreenState();
}

class _PeopleLoveScreenState extends State<PeopleLoveScreen> {
  @override
  void initState() {
    super.initState();
    context.read<PeopleLovedBloc>().add(OnPeopleLovedEventCalled());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'People You\nLoved',
          textAlign: TextAlign.center,
          style: getWhiteTextStyle(
            fontWeight: FontWeightManager.semibold,
            fontSize: FontSizeManager.f20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: AppSize.s30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: AppSize.s50,
          ),
          BlocBuilder<PeopleLovedBloc, PeopleLovedState>(
            builder: (context, state) {
              if (state is PeopleLoveLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is PeopleLovedLoaded) {
                final users = state.userMatch;
                return users.isEmpty
                    ? Center(
                        child: Text(
                          'No Data User Match',
                          style: getWhiteTextStyle(),
                        ),
                      )
                    : Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return PeopleLovedCardWidget(
                              user: users[index],
                            );
                          },
                          itemCount: users.length,
                        ),
                      );
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
