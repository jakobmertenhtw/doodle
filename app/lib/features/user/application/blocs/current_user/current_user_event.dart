part of 'current_user_bloc.dart';

@freezed
class CurrentUserEvent with _$CurrentUserEvent {
  const factory CurrentUserEvent.loadCurrentUser() = LoadCurrentUser;
}