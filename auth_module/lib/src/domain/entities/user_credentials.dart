import 'package:auth_module/src/domain/events/auth_events.dart';
import 'package:auth_module/src/domain/value_objects/email.dart';
import 'package:ddd_core_module/ddd_core_module.dart';

class UserCredentials extends AggregateRoot<AuthEvent> {
  @override
  String id;
  Email emailAdress;
  UserCredentials(this.id, this.emailAdress);

  UserCredentials._(this.id, this.emailAdress);

  static UserCredentials create(String id, Email email) {
    if (!email.isValid()) {
      throw StateError('Ungültige E-Mail-Adresse beim Erstellen von UserCredentials.');
    }
    final user = UserCredentials._(id, email);
    return user;
  }

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
  List<AuthEvent> changeEmail(Email email) {
    if (!email.isValid()) throw StateError('changeEmail wurde mit invalider E-Mail Adresse aufgerufen');
    final event = EmailChanged(id, email.getOrCrash());
    apply(event);
    return [event];
  }

  @override
  void apply(event) {
    switch (event) {
      case EmailChanged e:
        emailAdress = Email(event.email);
        break;
      default:
    }
  }
}
