import 'package:flutter/material.dart';

@immutable
class ValueFailure<T> {
  final String failure;
  final T failedValue;
  const ValueFailure(this.failure, this.failedValue);
}