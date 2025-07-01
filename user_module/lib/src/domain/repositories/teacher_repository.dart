

import 'package:dartz/dartz.dart';
import 'package:user_module/src/domain/entities/user.dart';
import 'package:user_module/src/domain/user_failures.dart';

abstract class TeacherRepository {
  Future<Either<UserFailure, User>> getTeacherByid(String id);
  Future<Either<UserFailure, Unit>> updateTeacher(User teacher);
  Future<Either<UserFailure, Unit>> createTeacher(User teacher);
  Future<Either<UserFailure, Unit>> deleteTeacher(User teacher);
}