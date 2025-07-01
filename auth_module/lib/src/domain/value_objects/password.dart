

import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/value_failure.dart';
import 'package:ddd_core_module/value_object.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }
  const Password._(this.value);
}

Either<ValueFailure<String>, String> validatePassword(String input) {
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