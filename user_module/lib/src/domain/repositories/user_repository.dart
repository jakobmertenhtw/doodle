
import 'package:dartz/dartz.dart';
import 'package:user_module/user_module.dart';

abstract class UserRepository {
  Future<Either<UserFailure, User>> getById(String userId);
  Future<Either<UserFailure, Unit>> save(User user);
}