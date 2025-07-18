import 'package:auth_module/auth_module.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/features/auth/application/services/auth_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  AuthService _authService;
  SigninBloc(this._authService) : super(SigninState.initial()) {
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
      final isEmailValid = state.email.isValid();
      final isPasswordValid = state.password.isValid();
      if (isEmailValid && isPasswordValid) {
        emit(
          state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ),
        );
        final failureOrSuccess = await _authService
            .signInUserWithEmailAndPassword(
              state.email,
              state.password,
            );
        emit(
          state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: some(failureOrSuccess),
          ),
        );
      } else {
        emit(
          state.copyWith(
            isSubmitting: false,
            showErrorMessage: true,
            authFailureOrSuccessOption: none(),
          ),
        );
      }
    });
  }
}
