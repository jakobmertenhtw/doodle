part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuth() = AuthCheckInit;
  const factory AuthEvent.signOut() = SignOut;

}