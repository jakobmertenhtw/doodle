part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.noCurrentUser() = NoUser;
  const factory UserState.userExists(User user) = UserExists;

}
