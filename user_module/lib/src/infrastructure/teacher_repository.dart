import 'package:dartz/dartz.dart';
import 'package:user_module/src/domain/entities/user.dart';
import 'package:user_module/src/domain/repositories/teacher_repository.dart';
import 'package:user_module/src/domain/user_failures.dart';
import 'package:user_module/src/domain/value_objects/full_name.dart';
import 'package:user_module/src/domain/value_objects/profile_image.dart';

class TeacherRepositoryImpl implements TeacherRepository {
  User oneTeacherMock = User(
    '039470234',
    FullName('Max Mustermann'),
    ProfileImage(''),
    USERTYPE.teacher
  );

  @override
  Future<Either<UserFailure, Unit>> createTeacher(User teacher) async {
    await Future.delayed(Duration(seconds: 1));
    return right(unit);
  }

  @override
  Future<Either<UserFailure, Unit>> deleteTeacher(User teacher) async {
    await Future.delayed(Duration(seconds: 1));
    return right(unit);
  }

  @override
  Future<Either<UserFailure, User>> getTeacherByid(String id) async {
    await Future.delayed(Duration(seconds: 1));
    return right(oneTeacherMock);
  }

  @override
  Future<Either<UserFailure, Unit>> updateTeacher(User teacher) async {
    await Future.delayed(Duration(seconds: 1));
    return right(unit);
  }
}
