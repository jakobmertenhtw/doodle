

class DomainError extends Error {
  final String message;
  DomainError(this.message);

  @override
  String toString() => 'DomainError: $message';
}