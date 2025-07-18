

import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/ddd_core_module.dart';

class LearnContentTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory LearnContentTitle(String input) {
    return LearnContentTitle._(_validateLearnContentTitle(input));
  }

  const LearnContentTitle._(this.value);

}

Either<ValueFailure<String>, String> _validateLearnContentTitle(String input) {
  if (input.length < 5 || input.length > 30) {
    return left(ValueFailure("Der Titel ist zu lang.", input));
  } else {
    return right(input);
  }
}