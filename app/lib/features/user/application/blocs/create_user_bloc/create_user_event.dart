part of 'create_user_bloc.dart';

@freezed
abstract class CreateUserEvent with _$CreateUserEvent {
  const factory CreateUserEvent.changedDoctoralDegree(String degree) = ChangedDoctoralDegree;
  const factory CreateUserEvent.changedName(String name) = ChangedName;
  const factory CreateUserEvent.changedUserRole(UserRole role) = ChangedUserRole;

  const factory CreateUserEvent.createUser() = CreateUser;
}