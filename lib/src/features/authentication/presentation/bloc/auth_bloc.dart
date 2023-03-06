import 'package:bloc/bloc.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/authentication/data/data_user_account_local.dart';
import 'package:flutter_sarang_app_like_tinder/src/features/authentication/domain/user_account.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<RegisterAuthEvent>((event, emit) async {
      emit(AuthLoading());
      DataUserAccountLocal.setDataUserAccountToStorage(event.userAccount);
      UserAccountRegister.setUserAccountRegister(event.iseRegister);
      await Future.delayed(
        const Duration(
          seconds: 2,
        ),
      );
      emit(
        AuthSuccess(
          event.userAccount,
          event.iseRegister,
        ),
      );
    });
  }
}
