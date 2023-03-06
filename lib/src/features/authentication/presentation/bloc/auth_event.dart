part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class RegisterAuthEvent extends AuthEvent {
  final UserAccount userAccount;
  final bool iseRegister;

  RegisterAuthEvent(
    this.userAccount,
    this.iseRegister,
  );
}
