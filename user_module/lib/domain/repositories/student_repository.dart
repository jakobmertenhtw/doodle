

import 'package:dartz/dartz.dart';
import 'package:user_module/domain/entities/student.dart';
import 'package:user_module/domain/repositories/user_failures.dart';

abstract class StudentRepository {
  Future<Either<UserFailure, List<Student>>> getStudents();
  Future<Either<UserFailure, List<Student>>> searchStudentsByName(String input);
  Future<Either<UserFailure, Student>> getStudentById(String id);
  Future<Either<UserFailure, Unit>> updateStudent(Student student);
  Future<Either<UserFailure, Unit>> createStudent(Student student);
  Future<Either<UserFailure, Unit>> deleteStudent(Student student);
}