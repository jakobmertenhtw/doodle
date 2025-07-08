

import 'package:auth_module/src/domain/entities/auth_object.dart';
import 'package:auth_module/src/domain/failures/auth_failures.dart';
import 'package:auth_module/src/domain/value_objects/email.dart';
import 'package:auth_module/src/domain/value_objects/password.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Option<AuthObject>> getCurrentSignedInUser();
  Future<Either<AuthFailure, Unit>> signInUserWithEmailAndPassword(Email email, Password passwort);
  Future<Either<AuthFailure, Unit>> signUpUserWithEmailAndPassword(Email email, Password passwort);
  Future<void> signOut();
}