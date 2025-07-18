import 'package:auth_module/auth_module.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/core/event_bus.dart';

class AuthService {
  final AuthRepository _repo;
  final EventBus _eventBus;
  const AuthService(this._repo, this._eventBus);
  Future<void> signOut() async {
    await _repo.signOut();
    final event = UserLoggedOut();
    _eventBus.emit<UserLoggedOut>(event);
  }

  Future<Either<AuthFailure, Unit>> signInUserWithEmailAndPassword(
    Email email,
    Password password,
  ) async {
    final result = await _repo.signInUserWithEmailAndPassword(email, password);

    if (result.isRight()) {
      final event = UserLoggedIn();
      _eventBus.emit<UserLoggedIn>(event);
    }

    return result;
  }

  Future<Either<AuthFailure, Unit>> signUpUserWithEmailAndPassword(
    Email email,
    Password password,
  ) async {
    final result = await _repo.signUpUserWithEmailAndPassword(email, password);
    if (result.isRight()) {
      final event = UserRegistered();
      _eventBus.emit<UserRegistered>(event);
    }
    return result;
  }

  Future<Option<UserCredentials>> getSignedInUser() async =>
      await _repo.getSignedInUser();
  Future<void> deleteCurrentSignedInUser() async {
    final currentUser = await _repo.getSignedInUser();
    final currentUserId = currentUser
        .getOrElse(
          () => throw StateError(
            'deleteCurrentSignedInUser() wurde aufgerufen, aber kein Nutzer ist angemeldet.',
          ),
        )
        .id;
    final result = await _repo.deleteCurrentUser();
    result.fold(
      (failure) {
        // TODO: show error message to the user
      },
      (_) {
        final event = UserDeleted(currentUserId);
        _eventBus.emit<UserDeleted>(event);
      },
    );
  }
}
