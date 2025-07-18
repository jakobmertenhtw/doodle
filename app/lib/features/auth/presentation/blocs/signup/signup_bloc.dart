import 'package:auth_module/auth_module.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/features/auth/application/services/auth_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  AuthService _authService;
  SignupBloc(this._authService) : super(SignupState.initial()) {
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
    on<SignUpSubmit>((event, emit) async {
      emit(state.copyWith(isSubmitting: true));

      if (!state.email.isValid() || !state.password.isValid()) {
        emit(
          state.copyWith(
            showErrorMessage: true,
            authFailureOrSuccessOption: none(),
            isSubmitting: false
          ),
        );
        return;
      }

      final result = await _authService.signUpUserWithEmailAndPassword(
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
