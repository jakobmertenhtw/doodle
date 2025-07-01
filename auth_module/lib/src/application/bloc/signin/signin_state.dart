part of 'signin_bloc.dart';

@freezed
abstract class SigninState with _$SigninState {

  const factory SigninState({
    required Email email,
    required Password password,
    required bool showErrorMessage,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SigninState;

  factory SigninState.initial() => SigninState(
    email: Email(''),
    password: Password(''),
    showErrorMessage: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none(),
  );
}
