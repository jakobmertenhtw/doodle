part of 'current_user_bloc.dart';

@freezed
abstract class CurrentUserState with _$CurrentUserState {

  factory CurrentUserState.initial() = CurrentUserInitialState;
  factory CurrentUserState.noCurrentUser() = NoCurrentUser;
  factory CurrentUserState.currentUserExists(CurrentSignedInUser user) = CurrentUserExists;
}
