

import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/value_failure.dart';
import 'package:ddd_core_module/value_object.dart';

class CourseGrade extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;
  
  factory CourseGrade(int input) {
    return CourseGrade._(_validateCourseGrade(input));
  }

  const CourseGrade._(this.value);
}

Either<ValueFailure<int>, int> _validateCourseGrade(int input) {
  if (input < 0 || input > 15) {
    return left(ValueFailure("Die Zahl liegt nicht im möglichen Bereich der Bewertungen", input));
  } else {
    return right(input);
  }
}