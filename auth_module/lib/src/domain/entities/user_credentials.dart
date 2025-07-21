import 'package:auth_module/src/domain/events/auth_events.dart';
import 'package:auth_module/src/domain/value_objects/email.dart';
import 'package:ddd_core_module/ddd_core_module.dart';

class UserCredentials extends AggregateRoot<AuthEvent> {
  @override
  String id;
  Email emailAdresse;
  UserCredentials(this.id, this.emailAdresse);

  UserCredentials._(this.id, this.emailAdresse);

  List<AuthEvent> signOut() {
    final event = UserLoggedOut();
    apply(event);
    return [event];
  }
  List<AuthEvent> delete() {
    final event = UserDeleted(id);
    apply(event);
    return [event];
  }
  List<AuthEvent> register() {
    final event = UserRegistered();
    apply(event);
    return [event];
  }
  List<AuthEvent> login() {
    final event = UserLoggedIn();
    apply(event);
    return [event];
  }

  @override
  void apply(event) {
    recordEvent(event);
  }
}
