// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateUserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateUserEvent()';
}


}

/// @nodoc
class $CreateUserEventCopyWith<$Res>  {
$CreateUserEventCopyWith(CreateUserEvent _, $Res Function(CreateUserEvent) __);
}


/// @nodoc


class ChangedName implements CreateUserEvent {
  const ChangedName(this.name);
  

 final  String name;

/// Create a copy of CreateUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangedNameCopyWith<ChangedName> get copyWith => _$ChangedNameCopyWithImpl<ChangedName>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangedName&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'CreateUserEvent.changedName(name: $name)';
}


}

/// @nodoc
abstract mixin class $ChangedNameCopyWith<$Res> implements $CreateUserEventCopyWith<$Res> {
  factory $ChangedNameCopyWith(ChangedName value, $Res Function(ChangedName) _then) = _$ChangedNameCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$ChangedNameCopyWithImpl<$Res>
    implements $ChangedNameCopyWith<$Res> {
  _$ChangedNameCopyWithImpl(this._self, this._then);

  final ChangedName _self;
  final $Res Function(ChangedName) _then;

/// Create a copy of CreateUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(ChangedName(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateStudent implements CreateUserEvent {
  const CreateStudent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateStudent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateUserEvent.createStudent()';
}


}




/// @nodoc


class CreateTeacher implements CreateUserEvent {
  const CreateTeacher();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTeacher);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateUserEvent.createTeacher()';
}


}




/// @nodoc
mixin _$CreateUserState {

 FullName get fullName; bool get showErrorMessages; bool get isSubmitting; Option<Either<UserFailure, Unit>> get failureOrSuccessOption;
/// Create a copy of CreateUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserStateCopyWith<CreateUserState> get copyWith => _$CreateUserStateCopyWithImpl<CreateUserState>(this as CreateUserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserState&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.failureOrSuccessOption, failureOrSuccessOption) || other.failureOrSuccessOption == failureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,showErrorMessages,isSubmitting,failureOrSuccessOption);

@override
String toString() {
  return 'CreateUserState(fullName: $fullName, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $CreateUserStateCopyWith<$Res>  {
  factory $CreateUserStateCopyWith(CreateUserState value, $Res Function(CreateUserState) _then) = _$CreateUserStateCopyWithImpl;
@useResult
$Res call({
 FullName fullName, bool showErrorMessages, bool isSubmitting, Option<Either<UserFailure, Unit>> failureOrSuccessOption
});




}
/// @nodoc
class _$CreateUserStateCopyWithImpl<$Res>
    implements $CreateUserStateCopyWith<$Res> {
  _$CreateUserStateCopyWithImpl(this._self, this._then);

  final CreateUserState _self;
  final $Res Function(CreateUserState) _then;

/// Create a copy of CreateUserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,Object? showErrorMessages = null,Object? isSubmitting = null,Object? failureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as FullName,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,failureOrSuccessOption: null == failureOrSuccessOption ? _self.failureOrSuccessOption : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<UserFailure, Unit>>,
  ));
}

}


/// @nodoc


class _CreateUserState implements CreateUserState {
  const _CreateUserState({required this.fullName, required this.showErrorMessages, required this.isSubmitting, required this.failureOrSuccessOption});
  

@override final  FullName fullName;
@override final  bool showErrorMessages;
@override final  bool isSubmitting;
@override final  Option<Either<UserFailure, Unit>> failureOrSuccessOption;

/// Create a copy of CreateUserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateUserStateCopyWith<_CreateUserState> get copyWith => __$CreateUserStateCopyWithImpl<_CreateUserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateUserState&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.failureOrSuccessOption, failureOrSuccessOption) || other.failureOrSuccessOption == failureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,showErrorMessages,isSubmitting,failureOrSuccessOption);

@override
String toString() {
  return 'CreateUserState(fullName: $fullName, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$CreateUserStateCopyWith<$Res> implements $CreateUserStateCopyWith<$Res> {
  factory _$CreateUserStateCopyWith(_CreateUserState value, $Res Function(_CreateUserState) _then) = __$CreateUserStateCopyWithImpl;
@override @useResult
$Res call({
 FullName fullName, bool showErrorMessages, bool isSubmitting, Option<Either<UserFailure, Unit>> failureOrSuccessOption
});




}
/// @nodoc
class __$CreateUserStateCopyWithImpl<$Res>
    implements _$CreateUserStateCopyWith<$Res> {
  __$CreateUserStateCopyWithImpl(this._self, this._then);

  final _CreateUserState _self;
  final $Res Function(_CreateUserState) _then;

/// Create a copy of CreateUserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? showErrorMessages = null,Object? isSubmitting = null,Object? failureOrSuccessOption = null,}) {
  return _then(_CreateUserState(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as FullName,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,failureOrSuccessOption: null == failureOrSuccessOption ? _self.failureOrSuccessOption : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<UserFailure, Unit>>,
  ));
}


}

// dart format on
