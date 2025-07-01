part of 'create_user_bloc.dart';

@freezed
abstract class CreateUserState with _$CreateUserState {

  const factory CreateUserState({
    required FullName fullName, 
    required bool showErrorMessages, 
    required bool isSubmitting, 
    required Option<Either<UserFailure, Unit>> failureOrSuccessOption,
  }) = _CreateUserState;

  factory CreateUserState.initial() => CreateUserState(
    fullName: FullName(''), 
    showErrorMessages: false, 
    isSubmitting: false, 
    failureOrSuccessOption: none()
  );
}