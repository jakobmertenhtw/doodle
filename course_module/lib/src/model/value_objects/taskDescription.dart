

import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/value_failure.dart';
import 'package:ddd_core_module/value_object.dart';

class TaskDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TaskDescription(String input) {
    return TaskDescription._(_validateTaskDescription(input));
  }

  const TaskDescription._(this.value);

}

Either<ValueFailure<String>, String> _validateTaskDescription(String input) {
  if (input.length < 10 || input.length > 200) {
    return left(ValueFailure("Die Beschreibung ist zu lang oder zu kurz.", input));
  } else {
    return right(input);
  }
}