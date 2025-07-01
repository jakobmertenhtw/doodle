// The class that the app interacts with

import 'package:auth_module/src/application/bloc/auth/auth_bloc.dart';
import 'package:auth_module/src/domain/entities/user.dart';
import 'package:auth_module/src/infrastructure/repositories/firebase_auth_repository.dart';
import 'package:auth_module/src/locator.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter_bloc/flutter_bloc.dart';



sealed class UserAuthenticatedStatus {}
class UserUnauthenticated extends UserAuthenticatedStatus {}
class UserAuthenticated extends UserAuthenticatedStatus {
  final User user;
  UserAuthenticated(this.user);
}

class AuthModule {
  static bool _initialized = false;

  static void configureAuthModule(firebase.FirebaseAuth firebaseAuthInstance) {
    // first check if the method was called already
    if (_initialized) {
      throw Exception("The method should not be called twice.");
    }
    _initialized = true;
    setupDI(firebaseAuthInstance);
  }

  static Stream<UserAuthenticatedStatus> listenToAuthStream() async* {
    Bloc authBloc = Locator.get<AuthBloc>();
    authBloc.add(AuthEvent.checkAuth());


    // subscribe to the stream of the bloc
    await for (final state in authBloc.stream) {
      switch (state) {
        case Unauthenticated():
          yield UserUnauthenticated();
          break;
        case Authenticated():
          yield UserAuthenticated(state.user);
          break;
        default:
          break;
      }
    }
    
  }

  static String getCurrentSignedInUserId() {
    Bloc authBloc = Locator.get<AuthBloc>();
    if (authBloc.state is Authenticated) {
      return (authBloc.state as Authenticated).user.id;
    } else {
      throw Exception('There is no user currently signed in');
    }
  }

}

void setupDI(firebase.FirebaseAuth firebaseAuthInstance) {
  Locator.register<FirebaseAuthRepository>(FirebaseAuthRepository(firebaseAuthInstance));
  Locator.register(AuthBloc(Locator.get<FirebaseAuthRepository>()));
}
