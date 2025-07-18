part of 'current_user_bloc.dart';

@freezed
class CurrentUserState with _$CurrentUserState {
  const factory CurrentUserState.initial() = CurrentUserInitialState;
  const factory CurrentUserState.unauthenticated() = UnauthenticatedUser;
  const factory CurrentUserState.authenticatedWithNoAccount(UserCredentials authObject) = AuthenticatedWithNoAccount;
  const factory CurrentUserState.authenticatedWithAccount(User user) = AuthenticatedWithAccount;

}
