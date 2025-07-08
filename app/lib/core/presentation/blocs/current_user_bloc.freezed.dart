// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CurrentUserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentUserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserEvent()';
}


}

/// @nodoc
class $CurrentUserEventCopyWith<$Res>  {
$CurrentUserEventCopyWith(CurrentUserEvent _, $Res Function(CurrentUserEvent) __);
}


/// @nodoc


class CheckCurrentUser implements CurrentUserEvent {
  const CheckCurrentUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckCurrentUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserEvent.checkCurrentUser()';
}


}




/// @nodoc


class SignOut implements CurrentUserEvent {
  const SignOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserEvent.signOut()';
}


}




/// @nodoc
mixin _$CurrentUserState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentUserState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserState()';
}


}

/// @nodoc
class $CurrentUserStateCopyWith<$Res>  {
$CurrentUserStateCopyWith(CurrentUserState _, $Res Function(CurrentUserState) __);
}


/// @nodoc


class CurrentUserInitialState implements CurrentUserState {
  const CurrentUserInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentUserInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserState.initial()';
}


}




/// @nodoc


class UnauthenticatedUser implements CurrentUserState {
  const UnauthenticatedUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnauthenticatedUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserState.unauthenticated()';
}


}




/// @nodoc


class AuthenticatedWithNoAccount implements CurrentUserState {
  const AuthenticatedWithNoAccount(this.authObject);
  

 final  AuthObject authObject;

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticatedWithNoAccountCopyWith<AuthenticatedWithNoAccount> get copyWith => _$AuthenticatedWithNoAccountCopyWithImpl<AuthenticatedWithNoAccount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticatedWithNoAccount&&(identical(other.authObject, authObject) || other.authObject == authObject));
}


@override
int get hashCode => Object.hash(runtimeType,authObject);

@override
String toString() {
  return 'CurrentUserState.authenticatedWithNoAccount(authObject: $authObject)';
}


}

/// @nodoc
abstract mixin class $AuthenticatedWithNoAccountCopyWith<$Res> implements $CurrentUserStateCopyWith<$Res> {
  factory $AuthenticatedWithNoAccountCopyWith(AuthenticatedWithNoAccount value, $Res Function(AuthenticatedWithNoAccount) _then) = _$AuthenticatedWithNoAccountCopyWithImpl;
@useResult
$Res call({
 AuthObject authObject
});




}
/// @nodoc
class _$AuthenticatedWithNoAccountCopyWithImpl<$Res>
    implements $AuthenticatedWithNoAccountCopyWith<$Res> {
  _$AuthenticatedWithNoAccountCopyWithImpl(this._self, this._then);

  final AuthenticatedWithNoAccount _self;
  final $Res Function(AuthenticatedWithNoAccount) _then;

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? authObject = null,}) {
  return _then(AuthenticatedWithNoAccount(
null == authObject ? _self.authObject : authObject // ignore: cast_nullable_to_non_nullable
as AuthObject,
  ));
}


}

/// @nodoc


class AuthenticatedWithAccount implements CurrentUserState {
  const AuthenticatedWithAccount(this.user);
  

 final  User user;

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticatedWithAccountCopyWith<AuthenticatedWithAccount> get copyWith => _$AuthenticatedWithAccountCopyWithImpl<AuthenticatedWithAccount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticatedWithAccount&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'CurrentUserState.authenticatedWithAccount(user: $user)';
}


}

/// @nodoc
abstract mixin class $AuthenticatedWithAccountCopyWith<$Res> implements $CurrentUserStateCopyWith<$Res> {
  factory $AuthenticatedWithAccountCopyWith(AuthenticatedWithAccount value, $Res Function(AuthenticatedWithAccount) _then) = _$AuthenticatedWithAccountCopyWithImpl;
@useResult
$Res call({
 User user
});




}
/// @nodoc
class _$AuthenticatedWithAccountCopyWithImpl<$Res>
    implements $AuthenticatedWithAccountCopyWith<$Res> {
  _$AuthenticatedWithAccountCopyWithImpl(this._self, this._then);

  final AuthenticatedWithAccount _self;
  final $Res Function(AuthenticatedWithAccount) _then;

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(AuthenticatedWithAccount(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}


}

// dart format on
