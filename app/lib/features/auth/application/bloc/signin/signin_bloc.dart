import 'package:auth_module/src/domain/failures/auth_failures.dart';
import 'package:auth_module/src/domain/repositories/auth_repository.dart';
import 'package:auth_module/src/domain/value_objects/email.dart';
import 'package:auth_module/src/domain/value_objects/password.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  AuthRepository _repo;
  SigninBloc(this._repo) : super(SigninState.initial()) {
    on<EmailChanged>((event, emit) {
      emit(
        state.copyWith(
          email: Email(event.emailString),
          isSubmitting: false,
          authFailureOrSuccessOption: none(),
        ),
      );
    });
    on<PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          password: Password(event.passwordString),
          isSubmitting: false,
          authFailureOrSuccessOption: none(),
        ),
      );
    });
    on<SignInSubmit>((event, emit) async {
      emit(state.copyWith(isSubmitting: true));
      if (!state.email.isValid() || !state.password.isValid()) {
        emit(
          state.copyWith(
            showErrorMessage: true,
            authFailureOrSuccessOption: none(),
            isSubmitting: false,
          ),
        );
        return;
      }
      final result = await _repo.signInUserWithEmailAndPassword(
        state.email,
        state.password,
      );
      emit(
        state.copyWith(
          authFailureOrSuccessOption: some(result),
        ),
      );
    });
  }
}
