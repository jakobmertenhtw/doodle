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


class LoadCurrentUser implements CurrentUserEvent {
  const LoadCurrentUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCurrentUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserEvent.loadCurrentUser()';
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
   CurrentUserInitialState();
  






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


class NoCurrentUser implements CurrentUserState {
   NoCurrentUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoCurrentUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CurrentUserState.noCurrentUser()';
}


}




/// @nodoc


class CurrentUserExists implements CurrentUserState {
   CurrentUserExists(this.user);
  

 final  CurrentSignedInUser user;

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentUserExistsCopyWith<CurrentUserExists> get copyWith => _$CurrentUserExistsCopyWithImpl<CurrentUserExists>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentUserExists&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'CurrentUserState.currentUserExists(user: $user)';
}


}

/// @nodoc
abstract mixin class $CurrentUserExistsCopyWith<$Res> implements $CurrentUserStateCopyWith<$Res> {
  factory $CurrentUserExistsCopyWith(CurrentUserExists value, $Res Function(CurrentUserExists) _then) = _$CurrentUserExistsCopyWithImpl;
@useResult
$Res call({
 CurrentSignedInUser user
});




}
/// @nodoc
class _$CurrentUserExistsCopyWithImpl<$Res>
    implements $CurrentUserExistsCopyWith<$Res> {
  _$CurrentUserExistsCopyWithImpl(this._self, this._then);

  final CurrentUserExists _self;
  final $Res Function(CurrentUserExists) _then;

/// Create a copy of CurrentUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(CurrentUserExists(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as CurrentSignedInUser,
  ));
}


}

// dart format on
