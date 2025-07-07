// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CreateCourseEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCourseEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateCourseEvent()';
}


}

/// @nodoc
class $CreateCourseEventCopyWith<$Res>  {
$CreateCourseEventCopyWith(CreateCourseEvent _, $Res Function(CreateCourseEvent) __);
}


/// @nodoc


class TitleChanged implements CreateCourseEvent {
  const TitleChanged(this.input);
  

 final  String input;

/// Create a copy of CreateCourseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TitleChangedCopyWith<TitleChanged> get copyWith => _$TitleChangedCopyWithImpl<TitleChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TitleChanged&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'CreateCourseEvent.titleChanged(input: $input)';
}


}

/// @nodoc
abstract mixin class $TitleChangedCopyWith<$Res> implements $CreateCourseEventCopyWith<$Res> {
  factory $TitleChangedCopyWith(TitleChanged value, $Res Function(TitleChanged) _then) = _$TitleChangedCopyWithImpl;
@useResult
$Res call({
 String input
});




}
/// @nodoc
class _$TitleChangedCopyWithImpl<$Res>
    implements $TitleChangedCopyWith<$Res> {
  _$TitleChangedCopyWithImpl(this._self, this._then);

  final TitleChanged _self;
  final $Res Function(TitleChanged) _then;

/// Create a copy of CreateCourseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(TitleChanged(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DescriptionChanged implements CreateCourseEvent {
  const DescriptionChanged(this.input);
  

 final  String input;

/// Create a copy of CreateCourseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DescriptionChangedCopyWith<DescriptionChanged> get copyWith => _$DescriptionChangedCopyWithImpl<DescriptionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DescriptionChanged&&(identical(other.input, input) || other.input == input));
}


@override
int get hashCode => Object.hash(runtimeType,input);

@override
String toString() {
  return 'CreateCourseEvent.descriptionChanged(input: $input)';
}


}

/// @nodoc
abstract mixin class $DescriptionChangedCopyWith<$Res> implements $CreateCourseEventCopyWith<$Res> {
  factory $DescriptionChangedCopyWith(DescriptionChanged value, $Res Function(DescriptionChanged) _then) = _$DescriptionChangedCopyWithImpl;
@useResult
$Res call({
 String input
});




}
/// @nodoc
class _$DescriptionChangedCopyWithImpl<$Res>
    implements $DescriptionChangedCopyWith<$Res> {
  _$DescriptionChangedCopyWithImpl(this._self, this._then);

  final DescriptionChanged _self;
  final $Res Function(DescriptionChanged) _then;

/// Create a copy of CreateCourseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? input = null,}) {
  return _then(DescriptionChanged(
null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SubmitCreateCourseForm implements CreateCourseEvent {
  const SubmitCreateCourseForm();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitCreateCourseForm);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CreateCourseEvent.submitCreateCourseForm()';
}


}




/// @nodoc
mixin _$CreateCourseState {

 CourseTitle get title; CourseDescription get description; bool get isSubmitting; bool get showValueErrors; Option<Either<CourseFailure, Unit>> get failureOrSuccess;
/// Create a copy of CreateCourseState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCourseStateCopyWith<CreateCourseState> get copyWith => _$CreateCourseStateCopyWithImpl<CreateCourseState>(this as CreateCourseState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCourseState&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.showValueErrors, showValueErrors) || other.showValueErrors == showValueErrors)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,isSubmitting,showValueErrors,failureOrSuccess);

@override
String toString() {
  return 'CreateCourseState(title: $title, description: $description, isSubmitting: $isSubmitting, showValueErrors: $showValueErrors, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class $CreateCourseStateCopyWith<$Res>  {
  factory $CreateCourseStateCopyWith(CreateCourseState value, $Res Function(CreateCourseState) _then) = _$CreateCourseStateCopyWithImpl;
@useResult
$Res call({
 CourseTitle title, CourseDescription description, bool isSubmitting, bool showValueErrors, Option<Either<CourseFailure, Unit>> failureOrSuccess
});




}
/// @nodoc
class _$CreateCourseStateCopyWithImpl<$Res>
    implements $CreateCourseStateCopyWith<$Res> {
  _$CreateCourseStateCopyWithImpl(this._self, this._then);

  final CreateCourseState _self;
  final $Res Function(CreateCourseState) _then;

/// Create a copy of CreateCourseState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? isSubmitting = null,Object? showValueErrors = null,Object? failureOrSuccess = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as CourseTitle,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as CourseDescription,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,showValueErrors: null == showValueErrors ? _self.showValueErrors : showValueErrors // ignore: cast_nullable_to_non_nullable
as bool,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<CourseFailure, Unit>>,
  ));
}

}


/// @nodoc


class _CreateCourseState implements CreateCourseState {
  const _CreateCourseState({required this.title, required this.description, required this.isSubmitting, required this.showValueErrors, required this.failureOrSuccess});
  

@override final  CourseTitle title;
@override final  CourseDescription description;
@override final  bool isSubmitting;
@override final  bool showValueErrors;
@override final  Option<Either<CourseFailure, Unit>> failureOrSuccess;

/// Create a copy of CreateCourseState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCourseStateCopyWith<_CreateCourseState> get copyWith => __$CreateCourseStateCopyWithImpl<_CreateCourseState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCourseState&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.showValueErrors, showValueErrors) || other.showValueErrors == showValueErrors)&&(identical(other.failureOrSuccess, failureOrSuccess) || other.failureOrSuccess == failureOrSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,isSubmitting,showValueErrors,failureOrSuccess);

@override
String toString() {
  return 'CreateCourseState(title: $title, description: $description, isSubmitting: $isSubmitting, showValueErrors: $showValueErrors, failureOrSuccess: $failureOrSuccess)';
}


}

/// @nodoc
abstract mixin class _$CreateCourseStateCopyWith<$Res> implements $CreateCourseStateCopyWith<$Res> {
  factory _$CreateCourseStateCopyWith(_CreateCourseState value, $Res Function(_CreateCourseState) _then) = __$CreateCourseStateCopyWithImpl;
@override @useResult
$Res call({
 CourseTitle title, CourseDescription description, bool isSubmitting, bool showValueErrors, Option<Either<CourseFailure, Unit>> failureOrSuccess
});




}
/// @nodoc
class __$CreateCourseStateCopyWithImpl<$Res>
    implements _$CreateCourseStateCopyWith<$Res> {
  __$CreateCourseStateCopyWithImpl(this._self, this._then);

  final _CreateCourseState _self;
  final $Res Function(_CreateCourseState) _then;

/// Create a copy of CreateCourseState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? isSubmitting = null,Object? showValueErrors = null,Object? failureOrSuccess = null,}) {
  return _then(_CreateCourseState(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as CourseTitle,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as CourseDescription,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,showValueErrors: null == showValueErrors ? _self.showValueErrors : showValueErrors // ignore: cast_nullable_to_non_nullable
as bool,failureOrSuccess: null == failureOrSuccess ? _self.failureOrSuccess : failureOrSuccess // ignore: cast_nullable_to_non_nullable
as Option<Either<CourseFailure, Unit>>,
  ));
}


}

// dart format on
