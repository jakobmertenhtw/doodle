

import 'package:auth_module/src/domain/entities/user.dart' as user;
import 'package:auth_module/src/domain/value_objects/email.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseNutzerMapper {

  static user.User? toDomain(User? u) {
    return u == null || u.email == null
        ? null
        : user.User(
            u.uid, 
            Email(u.email!),
          );
  }

}