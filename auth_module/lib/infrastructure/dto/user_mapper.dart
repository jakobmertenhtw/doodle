

import 'package:auth_module/domain/entities/user.dart' as user;
import 'package:auth_module/domain/value_objects/email_addresse.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseNutzerMapper {

  static user.User? toDomain(User? u) {
    return u == null || u.email == null
        ? null
        : user.User(
            u.uid, 
            EmailAddresse(u.email!),
          );
  }

}