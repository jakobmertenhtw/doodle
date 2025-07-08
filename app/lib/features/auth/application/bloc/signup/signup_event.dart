part of 'signup_bloc.dart';

@freezed
sealed class SignupEvent with _$SignupEvent {
    const factory SignupEvent.emailChanged(String emailString) = EmailChanged;
    const factory SignupEvent.passwordChanged(String passwordString) = PasswordChanged;
    const factory SignupEvent.signUpSubmit() = SignUpSubmit;
}