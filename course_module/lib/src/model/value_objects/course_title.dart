

import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/ddd_core_module.dart';

class CourseTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory CourseTitle(String input) {
    return CourseTitle._(_validateCourseTitle(input));
  }

  const CourseTitle._(this.value);

}

Either<ValueFailure<String>, String> _validateCourseTitle(String input) {
  if (input.length < 5 || input.length > 30) {
    return left(ValueFailure("Der Titel ist zu lang.", input));
  } else {
    return right(input);
  }
}