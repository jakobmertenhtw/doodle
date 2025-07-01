import 'package:auth_module/auth_module.dart' as auth;
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_module/src/domain/entities/user.dart';
import 'package:user_module/src/domain/repositories/student_repository.dart';
import 'package:user_module/src/domain/repositories/teacher_repository.dart';
import 'package:user_module/src/domain/user_failures.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final StudentRepository _studentRepository;
  final TeacherRepository _teacherRepository;
  UserBloc(this._studentRepository, this._teacherRepository)
    : super(UserState.noCurrentUser()) {
    on<CheckCurrentUser>((event, emit) async {
      String currentSignedInUserId = auth.AuthModule.getCurrentSignedInUserId();
      Either<UserFailure, User> teacher = await _teacherRepository
          .getTeacherByid(currentSignedInUserId);
      if (teacher.isRight()) {
        // teacher exists
        emit(
          UserState.userExists(
            teacher.fold((_) => throw Error(), (teacher) => teacher),
          ),
        );
        return;
      }
      Either<UserFailure, User> student = await _studentRepository
          .getStudentById(currentSignedInUserId);
      if (student.isRight()) {
        // student exists
        emit(
          UserState.userExists(
            teacher.fold((_) => throw Error(), (student) => student),
          ),
        );
        return;
      }
    });
  }
}
