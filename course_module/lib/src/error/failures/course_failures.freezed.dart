// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CourseFailure {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseFailure()';
}


}

/// @nodoc
class $CourseFailureCopyWith<$Res>  {
$CourseFailureCopyWith(CourseFailure _, $Res Function(CourseFailure) __);
}


/// Adds pattern-matching-related methods to [CourseFailure].
extension CourseFailurePatterns on CourseFailure {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ServerError value)?  serverError,TResult Function( CourseNotFound value)?  notFound,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError(_that);case CourseNotFound() when notFound != null:
return notFound(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ServerError value)  serverError,required TResult Function( CourseNotFound value)  notFound,}){
final _that = this;
switch (_that) {
case ServerError():
return serverError(_that);case CourseNotFound():
return notFound(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ServerError value)?  serverError,TResult? Function( CourseNotFound value)?  notFound,}){
final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError(_that);case CourseNotFound() when notFound != null:
return notFound(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  serverError,TResult Function( String courseId)?  notFound,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError();case CourseNotFound() when notFound != null:
return notFound(_that.courseId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  serverError,required TResult Function( String courseId)  notFound,}) {final _that = this;
switch (_that) {
case ServerError():
return serverError();case CourseNotFound():
return notFound(_that.courseId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  serverError,TResult? Function( String courseId)?  notFound,}) {final _that = this;
switch (_that) {
case ServerError() when serverError != null:
return serverError();case CourseNotFound() when notFound != null:
return notFound(_that.courseId);case _:
  return null;

}
}

}

/// @nodoc


class ServerError implements CourseFailure {
  const ServerError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseFailure.serverError()';
}


}




/// @nodoc


class CourseNotFound implements CourseFailure {
  const CourseNotFound(this.courseId);
  

 final  String courseId;

/// Create a copy of CourseFailure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseNotFoundCopyWith<CourseNotFound> get copyWith => _$CourseNotFoundCopyWithImpl<CourseNotFound>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseNotFound&&(identical(other.courseId, courseId) || other.courseId == courseId));
}


@override
int get hashCode => Object.hash(runtimeType,courseId);

@override
String toString() {
  return 'CourseFailure.notFound(courseId: $courseId)';
}


}

/// @nodoc
abstract mixin class $CourseNotFoundCopyWith<$Res> implements $CourseFailureCopyWith<$Res> {
  factory $CourseNotFoundCopyWith(CourseNotFound value, $Res Function(CourseNotFound) _then) = _$CourseNotFoundCopyWithImpl;
@useResult
$Res call({
 String courseId
});




}
/// @nodoc
class _$CourseNotFoundCopyWithImpl<$Res>
    implements $CourseNotFoundCopyWith<$Res> {
  _$CourseNotFoundCopyWithImpl(this._self, this._then);

  final CourseNotFound _self;
  final $Res Function(CourseNotFound) _then;

/// Create a copy of CourseFailure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? courseId = null,}) {
  return _then(CourseNotFound(
null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
