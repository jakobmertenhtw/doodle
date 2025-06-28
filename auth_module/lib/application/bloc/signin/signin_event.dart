part of 'signin_bloc.dart';

@freezed
sealed class SigninEvent with _$SigninEvent {
    const factory SigninEvent.emailChanged(String emailString) = EmailChanged;
    const factory SigninEvent.passwordChanged(String passwordString) = PasswordChanged;
    const factory SigninEvent.signInSubmit() = SignInSubmit;
}