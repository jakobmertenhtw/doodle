

import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/ddd_core_module.dart';

class LearnContentDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LearnContentDescription(String input) {
    return LearnContentDescription._(_validateLearnContentDescription(input));
  }

  const LearnContentDescription._(this.value);

}

Either<ValueFailure<String>, String> _validateLearnContentDescription(String input) {
  if (input.length < 10 || input.length > 300) {
    return left(ValueFailure("Die Beschreibung ist zu lang oder zu kurz.", input));
  } else {
    return right(input);
  }
}