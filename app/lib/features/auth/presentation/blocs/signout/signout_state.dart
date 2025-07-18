part of 'signout_bloc.dart';

@freezed
class SignoutState with _$SignoutState {
  const factory SignoutState.initial() = SignoutStateInitial;
  const factory SignoutState.loading() = SignoutStateLoading;
}
