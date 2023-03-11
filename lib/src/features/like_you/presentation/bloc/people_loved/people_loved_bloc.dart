import 'package:bloc/bloc.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/like_you/data/data_match_dummy.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/like_you/domain/user.dart';
import 'package:meta/meta.dart';

part 'people_loved_event.dart';
part 'people_loved_state.dart';

class PeopleLovedBloc extends Bloc<PeopleLovedEvent, PeopleLovedState> {
  PeopleLovedBloc() : super(PeopleLovedInitial()) {
    on<OnPeopleLovedEventCalled>((event, emit) async {
      emit(PeopleLoveLoading());
      await Future.delayed(const Duration(
        seconds: 1,
      ));
      emit(PeopleLovedLoaded(userMatch: dataMacthDummy));
    });

    on<AddPeopleLoved>((event, emit) {
      emit(PeopleLoveLoading());
      dataMacthDummy.add(event.user);
      emit(
        PeopleLovedLoaded(
          userMatch: dataMacthDummy,
        ),
      );
    });
  }
}
