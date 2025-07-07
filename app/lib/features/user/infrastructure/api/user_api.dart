

import 'package:doodle/features/user/application/api/user_api.dart';

class UserApiImpl implements UserApi {
  @override
  Future<CurrentSignedInUser> getCurrentSignedInUserOrCrash() async {
    await Future.delayed(Duration(seconds: 1));

    return CurrentSignedInUser("h983247029348ß32", CurrentSignedInUserType.teacher);
  }

}