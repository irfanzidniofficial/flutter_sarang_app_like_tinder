// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'people_loved_bloc.dart';

@immutable
abstract class PeopleLovedState {}

class PeopleLovedInitial extends PeopleLovedState {}

class PeopleLoveLoading extends PeopleLovedState {}

class PeopleLovedLoaded extends PeopleLovedState {
  final List<User> userMatch;
  
  PeopleLovedLoaded({
    required this.userMatch,
  });
}
