

import 'package:dartz/dartz.dart';
import 'package:user_module/src/domain/entities/user.dart';
import 'package:user_module/src/domain/user_failures.dart';

abstract class StudentRepository {
  Future<Either<UserFailure, List<User>>> getStudents();
  Future<Either<UserFailure, List<User>>> searchStudentsByName(String input);
  Future<Either<UserFailure, User>> getStudentById(String id);
  Future<Either<UserFailure, Unit>> updateStudent(User student);
  Future<Either<UserFailure, Unit>> createStudent(User student);
  Future<Either<UserFailure, Unit>> deleteStudent(User student);
}