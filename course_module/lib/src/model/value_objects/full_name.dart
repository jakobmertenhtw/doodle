

import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/ddd_core_module.dart';


class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String input) {
    return FullName._(validateFullName(input));
  }

  const FullName._(this.value);
}

Either<ValueFailure<String>, String> validateFullName(String input) {
  if (input.length > 2) {
    return right(input);
  } else {
    return left(ValueFailure('Name is too long.', input));
  }
}