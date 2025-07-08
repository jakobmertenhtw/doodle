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


class ChangedDoctoralDegree implements CreateUserEvent {
  const ChangedDoctoralDegree(this.degree);
  

 final  String degree;

/// Create a copy of CreateUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangedDoctoralDegreeCopyWith<ChangedDoctoralDegree> get copyWith => _$ChangedDoctoralDegreeCopyWithImpl<ChangedDoctoralDegree>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangedDoctoralDegree&&(identical(other.degree, degree) || other.degree == degree));
}


@override
int get hashCode => Object.hash(runtimeType,degree);

@override
String toString() {
  return 'CreateUserEvent.changedDoctoralDegree(degree: $degree)';
}


}

/// @nodoc
abstract mixin class $ChangedDoctoralDegreeCopyWith<$Res> implements $CreateUserEventCopyWith<$Res> {
  factory $ChangedDoctoralDegreeCopyWith(ChangedDoctoralDegree value, $Res Function(ChangedDoctoralDegree) _then) = _$ChangedDoctoralDegreeCopyWithImpl;
@useResult
$Res call({
 String degree
});




}
/// @nodoc
class _$ChangedDoctoralDegreeCopyWithImpl<$Res>
    implements $ChangedDoctoralDegreeCopyWith<$Res> {
  _$ChangedDoctoralDegreeCopyWithImpl(this._self, this._then);

  final ChangedDoctoralDegree _self;
  final $Res Function(ChangedDoctoralDegree) _then;

/// Create a copy of CreateUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? degree = null,}) {
  return _then(ChangedDoctoralDegree(
null == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


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


class ChangedUserRole implements CreateUserEvent {
  const ChangedUserRole(this.role);
  

 final  UserRole role;

/// Create a copy of CreateUserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangedUserRoleCopyWith<ChangedUserRole> get copyWith => _$ChangedUserRoleCopyWithImpl<ChangedUserRole>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangedUserRole&&(identical(other.role, role) || other.role == role));
}


@override
int get hashCode => Object.hash(runtimeType,role);

@override
String toString() {
  return 'CreateUserEvent.changedUserRole(role: $role)';
}


}

/// @nodoc
abstract mixin class $ChangedUserRoleCopyWith<$Res> implements $CreateUserEventCopyWith<$Res> {
  factory $ChangedUserRoleCopyWith(ChangedUserRole value, $Res Function(ChangedUserRole) _then) = _$ChangedUserRoleCopyWithImpl;
@useResult
$Res call({
 UserRole role
});




}
/// @nodoc
class _$ChangedUserRoleCopyWithImpl<$Res>
    implements $ChangedUserRoleCopyWith<$Res> {
  _$ChangedUserRoleCopyWithImpl(this._self, this._then);

  final ChangedUserRole _self;
  final $Res Function(ChangedUserRole) _then;

/// Create a copy of CreateUserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? role = null,}) {
  return _then(ChangedUserRole(
null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole,
  ));
}


}

/// @nodoc


class CreateUser implements CreateUserEvent {
  const CreateUser();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUser);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateUserEvent.createUser()';
}


}




/// @nodoc
mixin _$CreateUserState {

 FullName get fullName; DoctoralDegree get doctoralDegree; UserRole get role; bool get showErrorMessages; bool get isSubmitting; Option<Either<UserFailure, Unit>> get failureOrSuccessOption;
/// Create a copy of CreateUserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateUserStateCopyWith<CreateUserState> get copyWith => _$CreateUserStateCopyWithImpl<CreateUserState>(this as CreateUserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateUserState&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.doctoralDegree, doctoralDegree) || other.doctoralDegree == doctoralDegree)&&(identical(other.role, role) || other.role == role)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.failureOrSuccessOption, failureOrSuccessOption) || other.failureOrSuccessOption == failureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,doctoralDegree,role,showErrorMessages,isSubmitting,failureOrSuccessOption);

@override
String toString() {
  return 'CreateUserState(fullName: $fullName, doctoralDegree: $doctoralDegree, role: $role, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class $CreateUserStateCopyWith<$Res>  {
  factory $CreateUserStateCopyWith(CreateUserState value, $Res Function(CreateUserState) _then) = _$CreateUserStateCopyWithImpl;
@useResult
$Res call({
 FullName fullName, DoctoralDegree doctoralDegree, UserRole role, bool showErrorMessages, bool isSubmitting, Option<Either<UserFailure, Unit>> failureOrSuccessOption
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
@pragma('vm:prefer-inline') @override $Res call({Object? fullName = null,Object? doctoralDegree = null,Object? role = null,Object? showErrorMessages = null,Object? isSubmitting = null,Object? failureOrSuccessOption = null,}) {
  return _then(_self.copyWith(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as FullName,doctoralDegree: null == doctoralDegree ? _self.doctoralDegree : doctoralDegree // ignore: cast_nullable_to_non_nullable
as DoctoralDegree,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,failureOrSuccessOption: null == failureOrSuccessOption ? _self.failureOrSuccessOption : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<UserFailure, Unit>>,
  ));
}

}


/// @nodoc


class _CreateUserState implements CreateUserState {
  const _CreateUserState({required this.fullName, required this.doctoralDegree, required this.role, required this.showErrorMessages, required this.isSubmitting, required this.failureOrSuccessOption});
  

@override final  FullName fullName;
@override final  DoctoralDegree doctoralDegree;
@override final  UserRole role;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateUserState&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.doctoralDegree, doctoralDegree) || other.doctoralDegree == doctoralDegree)&&(identical(other.role, role) || other.role == role)&&(identical(other.showErrorMessages, showErrorMessages) || other.showErrorMessages == showErrorMessages)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.failureOrSuccessOption, failureOrSuccessOption) || other.failureOrSuccessOption == failureOrSuccessOption));
}


@override
int get hashCode => Object.hash(runtimeType,fullName,doctoralDegree,role,showErrorMessages,isSubmitting,failureOrSuccessOption);

@override
String toString() {
  return 'CreateUserState(fullName: $fullName, doctoralDegree: $doctoralDegree, role: $role, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, failureOrSuccessOption: $failureOrSuccessOption)';
}


}

/// @nodoc
abstract mixin class _$CreateUserStateCopyWith<$Res> implements $CreateUserStateCopyWith<$Res> {
  factory _$CreateUserStateCopyWith(_CreateUserState value, $Res Function(_CreateUserState) _then) = __$CreateUserStateCopyWithImpl;
@override @useResult
$Res call({
 FullName fullName, DoctoralDegree doctoralDegree, UserRole role, bool showErrorMessages, bool isSubmitting, Option<Either<UserFailure, Unit>> failureOrSuccessOption
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
@override @pragma('vm:prefer-inline') $Res call({Object? fullName = null,Object? doctoralDegree = null,Object? role = null,Object? showErrorMessages = null,Object? isSubmitting = null,Object? failureOrSuccessOption = null,}) {
  return _then(_CreateUserState(
fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as FullName,doctoralDegree: null == doctoralDegree ? _self.doctoralDegree : doctoralDegree // ignore: cast_nullable_to_non_nullable
as DoctoralDegree,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as UserRole,showErrorMessages: null == showErrorMessages ? _self.showErrorMessages : showErrorMessages // ignore: cast_nullable_to_non_nullable
as bool,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,failureOrSuccessOption: null == failureOrSuccessOption ? _self.failureOrSuccessOption : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
as Option<Either<UserFailure, Unit>>,
  ));
}


}

// dart format on
