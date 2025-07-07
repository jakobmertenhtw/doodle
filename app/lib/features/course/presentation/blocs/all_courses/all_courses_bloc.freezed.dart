// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_courses_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AllCoursesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllCoursesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllCoursesEvent()';
}


}

/// @nodoc
class $AllCoursesEventCopyWith<$Res>  {
$AllCoursesEventCopyWith(AllCoursesEvent _, $Res Function(AllCoursesEvent) __);
}


/// @nodoc


class LoadAllCourses implements AllCoursesEvent {
  const LoadAllCourses();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadAllCourses);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AllCoursesEvent.loadAllCourses()';
}


}




/// @nodoc


class CoursesUpdated implements AllCoursesEvent {
  const CoursesUpdated(final  List<CourseDto> courses): _courses = courses;
  

 final  List<CourseDto> _courses;
 List<CourseDto> get courses {
  if (_courses is EqualUnmodifiableListView) return _courses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_courses);
}


/// Create a copy of AllCoursesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CoursesUpdatedCopyWith<CoursesUpdated> get copyWith => _$CoursesUpdatedCopyWithImpl<CoursesUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CoursesUpdated&&const DeepCollectionEquality().equals(other._courses, _courses));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_courses));

@override
String toString() {
  return 'AllCoursesEvent.coursesUpdated(courses: $courses)';
}


}

/// @nodoc
abstract mixin class $CoursesUpdatedCopyWith<$Res> implements $AllCoursesEventCopyWith<$Res> {
  factory $CoursesUpdatedCopyWith(CoursesUpdated value, $Res Function(CoursesUpdated) _then) = _$CoursesUpdatedCopyWithImpl;
@useResult
$Res call({
 List<CourseDto> courses
});




}
/// @nodoc
class _$CoursesUpdatedCopyWithImpl<$Res>
    implements $CoursesUpdatedCopyWith<$Res> {
  _$CoursesUpdatedCopyWithImpl(this._self, this._then);

  final CoursesUpdated _self;
  final $Res Function(CoursesUpdated) _then;

/// Create a copy of AllCoursesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? courses = null,}) {
  return _then(CoursesUpdated(
null == courses ? _self._courses : courses // ignore: cast_nullable_to_non_nullable
as List<CourseDto>,
  ));
}


}

/// @nodoc
mixin _$AllCoursesState {

 List<CourseDto> get courses; bool get isLoading;
/// Create a copy of AllCoursesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllCoursesStateCopyWith<AllCoursesState> get copyWith => _$AllCoursesStateCopyWithImpl<AllCoursesState>(this as AllCoursesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllCoursesState&&const DeepCollectionEquality().equals(other.courses, courses)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(courses),isLoading);

@override
String toString() {
  return 'AllCoursesState(courses: $courses, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $AllCoursesStateCopyWith<$Res>  {
  factory $AllCoursesStateCopyWith(AllCoursesState value, $Res Function(AllCoursesState) _then) = _$AllCoursesStateCopyWithImpl;
@useResult
$Res call({
 List<CourseDto> courses, bool isLoading
});




}
/// @nodoc
class _$AllCoursesStateCopyWithImpl<$Res>
    implements $AllCoursesStateCopyWith<$Res> {
  _$AllCoursesStateCopyWithImpl(this._self, this._then);

  final AllCoursesState _self;
  final $Res Function(AllCoursesState) _then;

/// Create a copy of AllCoursesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courses = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
courses: null == courses ? _self.courses : courses // ignore: cast_nullable_to_non_nullable
as List<CourseDto>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _AllCoursesState implements AllCoursesState {
   _AllCoursesState({required final  List<CourseDto> courses, required this.isLoading}): _courses = courses;
  

 final  List<CourseDto> _courses;
@override List<CourseDto> get courses {
  if (_courses is EqualUnmodifiableListView) return _courses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_courses);
}

@override final  bool isLoading;

/// Create a copy of AllCoursesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AllCoursesStateCopyWith<_AllCoursesState> get copyWith => __$AllCoursesStateCopyWithImpl<_AllCoursesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllCoursesState&&const DeepCollectionEquality().equals(other._courses, _courses)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_courses),isLoading);

@override
String toString() {
  return 'AllCoursesState(courses: $courses, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$AllCoursesStateCopyWith<$Res> implements $AllCoursesStateCopyWith<$Res> {
  factory _$AllCoursesStateCopyWith(_AllCoursesState value, $Res Function(_AllCoursesState) _then) = __$AllCoursesStateCopyWithImpl;
@override @useResult
$Res call({
 List<CourseDto> courses, bool isLoading
});




}
/// @nodoc
class __$AllCoursesStateCopyWithImpl<$Res>
    implements _$AllCoursesStateCopyWith<$Res> {
  __$AllCoursesStateCopyWithImpl(this._self, this._then);

  final _AllCoursesState _self;
  final $Res Function(_AllCoursesState) _then;

/// Create a copy of AllCoursesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courses = null,Object? isLoading = null,}) {
  return _then(_AllCoursesState(
courses: null == courses ? _self._courses : courses // ignore: cast_nullable_to_non_nullable
as List<CourseDto>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
