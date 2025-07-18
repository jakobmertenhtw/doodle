

import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/ddd_core_module.dart';

class DoctoralDegree extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory DoctoralDegree(String input) {
    return DoctoralDegree._(_validateDoctoralDegree(input));
  }

  const DoctoralDegree._(this.value);
}

Either<ValueFailure<String>, String> _validateDoctoralDegree(String input) {
  const allowedDegrees = ['Dr.', 'Prof.'];
  if (allowedDegrees.contains(input.trim())) {
    return right(input.trim());
  } else {
    return left(ValueFailure('Invalid doctoral degree. Allowed: Dr. or Prof.', input));
  }
}
