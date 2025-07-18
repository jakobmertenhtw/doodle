part of 'create_user_bloc.dart';

@freezed
abstract class CreateUserState with _$CreateUserState {

  const factory CreateUserState({
    required FullName fullName, 
    required DoctoralDegree doctoralDegree,
    required UserRole role, 
    required bool showErrorMessages, 
    required bool isSubmitting, 
  }) = _CreateUserState;

  factory CreateUserState.initial() => CreateUserState(
    fullName: FullName(''), 
    doctoralDegree: DoctoralDegree(''),
    showErrorMessages: false, 
    isSubmitting: false, 
    role: UserRole.student,
  );
}