// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserFailure()';
}


}

/// @nodoc
class $UserFailureCopyWith<$Res>  {
$UserFailureCopyWith(UserFailure _, $Res Function(UserFailure) __);
}


/// @nodoc


class ServerError implements UserFailure {
  const ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserFailure.serverError()';
}


}




/// @nodoc


class UserNotExists implements UserFailure {
  const UserNotExists();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserNotExists);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserFailure.userNotExists()';
}


}




// dart format on
