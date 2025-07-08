

import 'package:auth_module/auth_module.dart';
import 'package:auth_module/src/domain/value_objects/email.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseNutzerMapper {

  static AuthObject? toDomain(User? u) {
    return u == null || u.email == null
        ? null
        : AuthObject(
            u.uid, 
            Email(u.email!),
          );
  }

}