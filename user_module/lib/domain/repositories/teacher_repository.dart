

import 'package:dartz/dartz.dart';
import 'package:user_module/domain/entities/teacher.dart';
import 'package:user_module/domain/repositories/user_failures.dart';

abstract class StudentRepository {
  Future<Either<UserFailure, Teacher>> getTeacherByid(String id);
  Future<Either<UserFailure, Unit>> updateTeacher(Teacher teacher);
  Future<Either<UserFailure, Unit>> createTeacher(Teacher teacher);
  Future<Either<UserFailure, Unit>> deleteTeacher(Teacher teacher);
}