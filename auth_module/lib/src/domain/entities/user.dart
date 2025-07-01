
import 'package:auth_module/src/domain/value_objects/email.dart';
import 'package:ddd_core_module/entity.dart';

class User extends Entity {
  @override
  String id;
  Email emailAdresse;
  User(this.id, this.emailAdresse);
}