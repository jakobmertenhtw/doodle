part of 'delete_user_bloc.dart';

@freezed
class DeleteUserState with _$DeleteUserState {
  const factory DeleteUserState.initial() = DeleteUserStateInitial;
  const factory DeleteUserState.loading() = DeleteUserStateLoading;

}
