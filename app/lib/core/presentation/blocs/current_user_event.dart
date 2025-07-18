part of 'current_user_bloc.dart';

@freezed
class CurrentUserEvent with _$CurrentUserEvent {
  const factory CurrentUserEvent.checkCurrentUser() = CheckCurrentUser;
  const factory CurrentUserEvent.logoutTriggerReceived() = LogoutTriggerReceived;

}