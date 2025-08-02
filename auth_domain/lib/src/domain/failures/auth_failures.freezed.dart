// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure()';
}


}

/// @nodoc
class $AuthFailureCopyWith<$Res>  {
$AuthFailureCopyWith(AuthFailure _, $Res Function(AuthFailure) __);
}


/// @nodoc


class ServerError implements AuthFailure {
  const ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.serverError()';
}


}




/// @nodoc


class EmailAlreadyInUse implements AuthFailure {
  const EmailAlreadyInUse();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailAlreadyInUse);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.emailAlreadyInUse()';
}


}




/// @nodoc


class EmailAndPasswordDoNotMatch implements AuthFailure {
  const EmailAndPasswordDoNotMatch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailAndPasswordDoNotMatch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthFailure.emailAndPasswordDoNotMatch()';
}


}




// dart format on
