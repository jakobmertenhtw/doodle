

import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/ddd_core_module.dart';

class CourseDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CourseDescription(String input) {
    return CourseDescription._(_validateCourseDescription(input));
  }

  const CourseDescription._(this.value);

}

Either<ValueFailure<String>, String> _validateCourseDescription(String input) {
  if (input.length < 10 || input.length > 200) {
    return left(ValueFailure("Die Beschreibung ist zu lang oder zu kurz.", input));
  } else {
    return right(input);
  }
}