import 'package:dartz/dartz.dart';
import 'package:ddd_core_module/value_failure.dart';
import 'package:flutter/widgets.dart';

@immutable
abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;
  const ValueObject();
  bool isValid() {
    return value.isRight();
  }

  T getOrCrash() {
    return value.fold((_) => throw Error(), (value) => value);
  }

  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }
}