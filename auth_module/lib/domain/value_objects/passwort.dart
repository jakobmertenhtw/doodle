

import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/value_failure.dart';
import 'package:ddd_core_module/value_object.dart';

class Passwort extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Passwort(String input) {
    return Passwort._(validatePasswort(input));
  }
  const Passwort._(this.value);
}

Either<ValueFailure<String>, String> validatePasswort(String input) {
  const minLength = 6;
  const maxLength = 20;
  final specialCharRegex = RegExp(r'[!@#\$%^&*(),.?":{}|<>]');
  if (input.length < minLength) {
    return left(ValueFailure("Das Passwort ist zu kurz.", input));
  }
  if (input.length > maxLength) {
    return left(ValueFailure("Das Passwort ist zu lang.", input));
  }
  if (!specialCharRegex.hasMatch(input)) {
    return left(ValueFailure("Das Passwort muss mindestens ein Sonderzeichen enthalten", input));
  }
  return right(input);
}