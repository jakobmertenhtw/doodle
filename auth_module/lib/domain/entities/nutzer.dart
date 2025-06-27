
import 'package:auth_module/domain/value_objects/email_addresse.dart';
import 'package:ddd_core_module/entity.dart';

class Nutzer extends Entity {
  @override
  String id;
  EmailAddresse emailAdresse;
  Nutzer(this.id, this.emailAdresse);
}