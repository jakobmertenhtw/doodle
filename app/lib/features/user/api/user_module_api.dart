

import 'package:dartz/dartz.dart';
import 'package:doodle/features/auth/api/auth_module_api.dart';
import 'package:user_module/user_module.dart';

class UserModuleApi {

  final UserRepository _repo;
  final AuthModuleApi _authApi;

  UserModuleApi(this._repo, this._authApi);

  Future<Either<UserFailure, User>> getCurrentUserOrCrash() async {
    final currentAuth = await _authApi.getCurrentAuthenticatedUserOrCrash();
    final result = await _repo.getById(currentAuth.id);

    return result.fold((f) {
      if (f is UserNotExists) throw Error();
      return left(f);
    }, (user) => right(user));
  }

}