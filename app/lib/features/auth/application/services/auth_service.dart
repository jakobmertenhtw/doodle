import 'package:auth_module/auth_module.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/core/event_bus.dart';

class AuthService {
  final AuthRepository _repo;
  final EventBus _eventBus;
  const AuthService(this._repo, this._eventBus);
  Future<void> signOut() async {
    final result = await _repo.getSignedInUser();
    final currentUser = result
        .getOrElse(
          () => throw StateError(
            'deleteCurrentSignedInUser() wurde aufgerufen, aber kein Nutzer ist angemeldet.',
          ),
        );
    await _repo.signOut();
    currentUser.signOut();
    final events = currentUser.pullDomainEvents();
    _eventBus.emitList(events);
  }

  Future<Either<AuthFailure, Unit>> signInUserWithEmailAndPassword(
    Email email,
    Password password,
  ) async {
    final result = await _repo.signInUserWithEmailAndPassword(email, password);
    return result.fold((failure) {
      return left(failure);
    }, (user) {
      user.login();
      final events = user.pullDomainEvents();
      _eventBus.emitList(events);
      return right(unit);
    });
  }

  Future<Either<AuthFailure, Unit>> signUpUserWithEmailAndPassword(
    Email email,
    Password password,
  ) async {
    final result = await _repo.signUpUserWithEmailAndPassword(email, password);
    return result.fold((failure) {
      return left(failure);
    }, (user) {
      user.register();
      final events = user.pullDomainEvents();
      _eventBus.emitList(events);
      return right(unit);
    });
  }

  Future<Option<UserCredentials>> getSignedInUser() async =>
      await _repo.getSignedInUser();

  Future<void> deleteCurrentSignedInUser() async {
    final currentUserResult = await _repo.getSignedInUser();
    final currentUser = currentUserResult
        .getOrElse(
          () => throw StateError(
            'deleteCurrentSignedInUser() wurde aufgerufen, aber kein Nutzer ist angemeldet.',
          ),
        );
    final result = await _repo.deleteCurrentUser();
    result.fold(
      (failure) {
        // TODO: show error message to the user
      },
      (_) {
        currentUser.delete();
        final events = currentUser.pullDomainEvents();
        _eventBus.emitList(events);
      },
    );
  }
}
