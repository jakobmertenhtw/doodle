
import 'package:auth_module/src/domain/value_objects/email.dart';
import 'package:ddd_core_module/entity.dart';

class AuthObject extends Entity {
  @override
  String id;
  Email email;
  AuthObject(this.id, this.email);
}