import 'package:auth_module/src/domain/events/auth_events.dart';
import 'package:auth_module/src/domain/value_objects/email.dart';
import 'package:ddd_core_module/ddd_core_module.dart';

class UserCredentials extends AggregateRoot<AuthEvent> {
  @override
  String id;
  Email emailAdresse;
  UserCredentials(this.id, this.emailAdresse);

  UserCredentials._(this.id, this.emailAdresse);

  @override
  void apply(event) {
    // TODO: implement apply
  }
}
