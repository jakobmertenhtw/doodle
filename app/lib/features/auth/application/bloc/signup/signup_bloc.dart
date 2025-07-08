import 'package:auth_module/src/domain/failures/auth_failures.dart';
import 'package:auth_module/src/domain/repositories/auth_repository.dart';
import 'package:auth_module/src/domain/value_objects/email.dart';
import 'package:auth_module/src/domain/value_objects/password.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  AuthRepository _repo;
  SignupBloc(this._repo) : super(SignupState.initial()) {
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

      final result = await _repo.signUpUserWithEmailAndPassword(
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
