part of 'create_user_bloc.dart';

@freezed
abstract class CreateUserEvent with _$CreateUserEvent {
  const factory CreateUserEvent.changedName(String name) = ChangedName;
  const factory CreateUserEvent.createStudent() = CreateStudent;
  const factory CreateUserEvent.createTeacher() = CreateTeacher;
}