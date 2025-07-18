
import 'package:auth_module/auth_module.dart';
import 'package:doodle/core/event_bus.dart';
import 'package:user_module/user_module.dart';

class UserDeletedHandler implements EventHandler<UserDeleted> {

  final UserRepository _repo;
  UserDeletedHandler(this._repo);

  @override
  void handle(UserDeleted event) {
    _repo.deleteUser(event.userId);
  }
}