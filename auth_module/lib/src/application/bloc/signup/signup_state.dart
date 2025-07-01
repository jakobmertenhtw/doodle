part of 'signup_bloc.dart';

@freezed
abstract class SignupState with _$SignupState {

  const factory SignupState({
    required Email email,
    required Password password,
    required bool showErrorMessage,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignupState;

  factory SignupState.initial() => SignupState(
    email: Email(''),
    password: Password(''),
    showErrorMessage: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none(),
  );
}