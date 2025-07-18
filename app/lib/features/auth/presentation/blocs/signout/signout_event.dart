part of 'signout_bloc.dart';

@freezed
class SignoutEvent with _$SignoutEvent {
  const factory SignoutEvent.signOut() = SignOut;
  const factory SignoutEvent.deleteAccount() = DeleteAccount;
}