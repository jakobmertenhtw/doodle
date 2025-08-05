
import 'package:auth_module/auth_module.dart';
import 'package:doodle/core/event_listener.dart';
import 'package:event_bus/event_bus.dart';
import 'package:user_module/user_module.dart';

class UserDeletedListener implements EventListener<UserDeleted> {

  final UserRepository _repo;
  final EventBus _eventBus;
  UserDeletedListener(this._repo, this._eventBus) {
    _eventBus.on<UserDeleted>().listen(handle);
  }

  @override
  void handle(UserDeleted event) {
    _repo.deleteUser(event.userId);
  }
}