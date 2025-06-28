
import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/value_failure.dart';
import 'package:ddd_core_module/value_object.dart';

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String input) {
    return FullName._(validateFullName(input));
  }

  const FullName._(this.value);
}

Either<ValueFailure<String>, String> validateFullName(String input) {

  if (input.length > 5 && input.length < 30) {
    return right(input);
  } else {
    return left(ValueFailure("Der Name ist zu kurz oder zu lang", input));
  }

}