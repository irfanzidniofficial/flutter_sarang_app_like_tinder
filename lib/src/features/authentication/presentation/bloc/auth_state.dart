part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final UserAccount userAccount;
  final bool isRegister;

  AuthSuccess(
    this.userAccount,
    this.isRegister,
  );
}
