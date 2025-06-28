

import 'package:auth_module/domain/entities/user.dart';
import 'package:auth_module/domain/failures/auth_failures.dart';
import 'package:auth_module/domain/value_objects/email_addresse.dart';
import 'package:auth_module/domain/value_objects/passwort.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Option<User>> getCurrentUser();
  Future<Either<AuthFailure, Unit>> signInUserWithEmailAndPassword(EmailAddresse email, Passwort passwort);
  Future<Either<AuthFailure, Unit>> signUpUserWithEmailAndPassword(EmailAddresse email, Passwort passwort);
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}