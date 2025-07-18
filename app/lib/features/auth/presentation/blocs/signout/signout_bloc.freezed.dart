// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignoutEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignoutEvent()';
}


}

/// @nodoc
class $SignoutEventCopyWith<$Res>  {
$SignoutEventCopyWith(SignoutEvent _, $Res Function(SignoutEvent) __);
}


/// @nodoc


class SignOut implements SignoutEvent {
  const SignOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignoutEvent.signOut()';
}


}




/// @nodoc


class DeleteAccount implements SignoutEvent {
  const DeleteAccount();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccount);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignoutEvent.deleteAccount()';
}


}




/// @nodoc
mixin _$SignoutState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignoutState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignoutState()';
}


}

/// @nodoc
class $SignoutStateCopyWith<$Res>  {
$SignoutStateCopyWith(SignoutState _, $Res Function(SignoutState) __);
}


/// @nodoc


class SignoutStateInitial implements SignoutState {
  const SignoutStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignoutStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignoutState.initial()';
}


}




/// @nodoc


class SignoutStateLoading implements SignoutState {
  const SignoutStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignoutStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignoutState.loading()';
}


}




// dart format on
