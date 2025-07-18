

sealed class UserEvent {
  final String userId;
  final DateTime timestamp;

  UserEvent(this.userId) : timestamp = DateTime.now();
}

class UserCreated extends UserEvent {
  UserCreated({required userId}) : super(userId);
}