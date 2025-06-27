

import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/value_failure.dart';
import 'package:ddd_core_module/value_object.dart';

class EmailAddresse extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory EmailAddresse(String input) {
    return EmailAddresse._(validateEmail(input));
  }
  const EmailAddresse._(this.value);
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