

import 'package:dartz/dartz.dart';
import 'package:user_module/user_module.dart';

class ImplUserRepository implements UserRepository {

  User? currentUser;

  @override
  Future<Either<UserFailure, User>> getById(String userId) async {
    await Future.delayed(Duration(milliseconds: 500));
    if (currentUser == null) {
      return left(UserFailure.userNotExists());
    }
    if (currentUser!.id != userId) {
      return left(UserFailure.userNotExists());
    }
    return right(currentUser!);
  }

  @override
  Future<Either<UserFailure, Unit>> save(User user) async {
    await Future.delayed(Duration(milliseconds: 500));
    currentUser = user;
    return right(unit);
  }

}