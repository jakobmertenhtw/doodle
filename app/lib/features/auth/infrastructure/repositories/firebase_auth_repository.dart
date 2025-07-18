import 'package:auth_module/auth_module.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';

class FirebaseAuthRepository implements AuthRepository {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  @override
  Future<Option<UserCredentials>> getSignedInUser() async {
    final firebaseUser = firebaseAuth.currentUser;
    if (firebaseUser != null && firebaseUser.email != null) {
      return some(
        UserCredentials(firebaseUser.uid, Email(firebaseUser.email!)),
      );
    } else {
      return none();
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInUserWithEmailAndPassword(
    Email email,
    Password passwort,
  ) async {
    final emailAddressStr = email.getOrCrash();
    final passwordStr = passwort.getOrCrash();
    try {
      return await FirebaseAuth.instance
          .signInWithEmailAndPassword(
            email: emailAddressStr,
            password: passwordStr,
          )
          .then((UserCredential _) => right(unit));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthFailure.emailAndPasswordDoNotMatch());
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
  Future<Either<AuthFailure, Unit>> signUpUserWithEmailAndPassword(
    Email email,
    Password passwort,
  ) async {
    final emailAddressStr = email.value.getOrElse(
      () => 'KEINE VALIDE E-MAIL-ADDRESSE',
    );
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
  
  @override
  Future<Either<AuthFailure, Unit>> deleteCurrentUser() async {
    final currentUser = firebaseAuth.currentUser;
    if (currentUser == null) {
      throw StateError('deleteCurrentSignedInUser() wurde aufgerufen, aber kein Nutzer ist angemeldet.');
    }
    try {
      await currentUser.delete();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      print(e);
      return left(AuthFailure.serverError());
    }
  }
}
