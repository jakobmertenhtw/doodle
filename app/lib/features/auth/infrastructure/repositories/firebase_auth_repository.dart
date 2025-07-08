

import 'package:auth_module/auth_module.dart';
import 'package:auth_module/src/domain/failures/auth_failures.dart';
import 'package:auth_module/src/domain/repositories/auth_repository.dart';
import 'package:auth_module/src/domain/value_objects/email.dart';
import 'package:auth_module/src/domain/value_objects/password.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';



class FirebaseAuthRepository implements AuthRepository {

  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  
  @override
  Future<Option<AuthObject>> getCurrentSignedInUser() async {
    final firebaseUser = firebaseAuth.currentUser;
    if (firebaseUser != null && firebaseUser.email != null) {
      return some(AuthObject(firebaseUser.uid, Email(firebaseUser.email!)));
    } else {
      return none();
    }
  }
  
  @override
  Future<Either<AuthFailure, Unit>> signInUserWithEmailAndPassword(Email email, Password passwort) async {
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
  Future<Either<AuthFailure, Unit>> signUpUserWithEmailAndPassword(Email email, Password passwort) async {
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