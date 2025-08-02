

import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/ddd_core_module.dart';

class Email extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Email(String input) {
    return Email._(validateEmail(input));
  }
  const Email._(this.value);
}
Either<ValueFailure<String>, String> validateEmail(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure<String>("Die E-Mail-Adresse ist nicht in einem validen Format", input));
  }
}