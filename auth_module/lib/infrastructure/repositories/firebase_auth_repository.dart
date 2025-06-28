

import 'package:auth_module/domain/entities/user.dart' as user;
import 'package:auth_module/domain/failures/auth_failures.dart';
import 'package:auth_module/domain/repositories/auth_repository.dart';
import 'package:auth_module/domain/value_objects/email_addresse.dart';
import 'package:auth_module/domain/value_objects/passwort.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';



class FirebaseAuthRepository implements AuthRepository {

  final FirebaseAuth firebaseAuth;
  
  FirebaseAuthRepository(this.firebaseAuth);
  
  @override
  Future<Option<user.User>> getCurrentUser() async {
    final firebaseUser = firebaseAuth.currentUser;
    if (firebaseUser != null && firebaseUser.email != null) {
      return some(user.User(firebaseUser.uid, EmailAddresse(firebaseUser.email!)));
    } else {
      return none();
    }
  }
  
  @override
  Future<Either<AuthFailure, Unit>> signInUserWithEmailAndPassword(EmailAddresse email, Passwort passwort) async {
    final emailAddressStr = email.value.getOrElse(() => 'KEINE VALIDE E-MAIL-ADDRESSE');
    final passwordStr = passwort.value.getOrElse(() => 'KEIN VALIDES PASSWORT');
    try {
      return await firebaseAuth
          .signInWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((UserCredential _) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' || e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.invalidEmailAndPasswordMatch());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }
  
  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    // TODO: IMPLEMENT
    throw UnsupportedError("not implemented yet");

  }
  
  @override
  Future<void> signOut() async {
    await Future.wait([
      //googleSignIn.signOut(),
      firebaseAuth.signOut(),
    ]);
  }
  
  @override
  Future<Either<AuthFailure, Unit>> signUpUserWithEmailAndPassword(EmailAddresse email, Passwort passwort) async {
    final emailAddressStr = email.value.getOrElse(() => 'KEINE VALIDE E-MAIL-ADDRESSE');
    final passwordStr = passwort.value.getOrElse(() => 'KEIN VALIDES PASSWORT');
    try {
      return await firebaseAuth
          .createUserWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((UserCredential _) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  
}