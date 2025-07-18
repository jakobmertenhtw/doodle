sealed class AuthEvent {
  final DateTime timestamp;
  AuthEvent() : timestamp = DateTime.now();
}
class UserRegistered extends AuthEvent {}
class UserLoggedIn extends AuthEvent {}
class UserLoggedOut extends AuthEvent {}
class UserDeleted extends AuthEvent {
  final String userId;
  UserDeleted(this.userId);
}
