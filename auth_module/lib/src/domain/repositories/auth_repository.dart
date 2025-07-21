

import 'package:auth_module/src/domain/entities/user_credentials.dart';
import 'package:auth_module/src/domain/failures/auth_failures.dart';
import 'package:auth_module/src/domain/value_objects/email.dart';
import 'package:auth_module/src/domain/value_objects/password.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Option<UserCredentials>> getSignedInUser();
  Future<Either<AuthFailure, UserCredentials>> signInUserWithEmailAndPassword(Email email, Password passwort);
  Future<Either<AuthFailure, UserCredentials>> signUpUserWithEmailAndPassword(Email email, Password passwort);
  Future<void> signOut();
  Future<Either<AuthFailure, Unit>> deleteCurrentUser();
}