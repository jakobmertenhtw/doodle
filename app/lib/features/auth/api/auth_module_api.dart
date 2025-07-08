
import 'package:auth_module/auth_module.dart';

class AuthModuleApi {

  final AuthRepository _repo;
  AuthModuleApi(this._repo);

  Future<AuthObject> getCurrentAuthenticatedUserOrCrash() async {
    final result = await _repo.getCurrentSignedInUser();
    return result.fold(() => throw Error(), (authObject) => authObject);
  }

}