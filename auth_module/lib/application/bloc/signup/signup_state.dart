part of 'signup_bloc.dart';

@freezed
abstract class SignupState with _$SignupState {

  const factory SignupState({
    required EmailAddresse email,
    required Passwort password,
    required bool showErrorMessage,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignupState;

  factory SignupState.initial() => SignupState(
    email: EmailAddresse(''),
    password: Passwort(''),
    showErrorMessage: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none(),
  );
}