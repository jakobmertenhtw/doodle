
import 'package:auth_module/domain/value_objects/email_addresse.dart';
import 'package:ddd_core_module/entity.dart';

class User extends Entity {
  @override
  String id;
  EmailAddresse emailAdresse;
  User(this.id, this.emailAdresse);
}