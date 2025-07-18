


import 'package:dartz/dartz.dart';
import 'package:doodle/features/auth/api/doodle_auth_api.dart';
import 'package:doodle/features/user/application/services/user_service.dart';
import 'package:user_module/user_module.dart';

class DoodleUser {

  final UserService _userService;

  DoodleUser(this._userService);

  Future<Either<UserFailure, User>> getUserById(String id) async {
    final result = await _userService.getUserById(id);
    return result.fold((failure) {
      if (failure is UserNotExists) throw StateError('getCurrentSignedInUserOrCrash wurde aufgerufen, aber kein Nutzer wurde gefunden.');
      return left(UserFailure.serverError());
    }, (user) {
      return right(user);
    });
  }

}