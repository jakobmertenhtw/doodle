import 'package:dartz/dartz.dart';
import 'package:user_module/src/domain/entities/user.dart';
import 'package:user_module/src/domain/repositories/student_repository.dart';
import 'package:user_module/src/domain/user_failures.dart';
import 'package:user_module/src/domain/value_objects/full_name.dart';
import 'package:user_module/src/domain/value_objects/profile_image.dart';

class StudentRepositoryImpl extends StudentRepository {
  User oneStudentMock = User(
    '9328uwr89732ß',
    FullName('Max Mustermann'),
    ProfileImage(''),
    USERTYPE.student
  );
  List<User> studentListMock = [
    User('032902938423', FullName('John Doe'), ProfileImage(''), USERTYPE.student),
    User('9328uwr89732ß', FullName('Max Mustermann'), ProfileImage(''), USERTYPE.student),
    User('30294709243', FullName('Test User'), ProfileImage(''), USERTYPE.student),
    User('03423423', FullName('Lisa Neumann'), ProfileImage(''), USERTYPE.student),
  ];
  List<User> anotherStudentListMock = [
    User('032902938423', FullName('John Doe'), ProfileImage(''), USERTYPE.student),
    User('9328uwr89732ß', FullName('Max Mustermann'), ProfileImage(''), USERTYPE.student),
  ];




  @override
  Future<Either<UserFailure, Unit>> createStudent(User student) async {
    await Future.delayed(Duration(seconds: 1));
    return right(unit);
  }

  @override
  Future<Either<UserFailure, Unit>> deleteStudent(User student) async {
    await Future.delayed(Duration(seconds: 1));
    return right(unit);
  }

  @override
  Future<Either<UserFailure, User>> getStudentById(String id) async {
    await Future.delayed(Duration(seconds: 1));
    return right(oneStudentMock);
  }

  @override
  Future<Either<UserFailure, List<User>>> getStudents() async {
    await Future.delayed(Duration(seconds: 1));
    return right(studentListMock);
  }

  @override
  Future<Either<UserFailure, List<User>>> searchStudentsByName(
    String input,
  ) async {
    await Future.delayed(Duration(seconds: 1));
    return right(anotherStudentListMock);
  }

  @override
  Future<Either<UserFailure, Unit>> updateStudent(User student) async {
    await Future.delayed(Duration(seconds: 1));
    return right(unit);
  }
}
