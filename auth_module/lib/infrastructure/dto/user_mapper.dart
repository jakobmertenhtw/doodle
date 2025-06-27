

import 'package:auth_module/domain/entities/nutzer.dart';
import 'package:auth_module/domain/value_objects/email_addresse.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseNutzerMapper {

  static Nutzer? toDomain(User? user) {
    return user == null || user.email == null
        ? null
        : Nutzer(
            user.uid, 
            EmailAddresse(user.email!),
          );
  }

}