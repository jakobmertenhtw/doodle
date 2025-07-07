// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
CourseDto _$CourseDtoFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'student':
          return CourseStudentDto.fromJson(
            json
          );
                case 'teacher':
          return CourseTeacherDto.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'CourseDto',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$CourseDto {

 String get courseTitle; String get courseDescription;
/// Create a copy of CourseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseDtoCopyWith<CourseDto> get copyWith => _$CourseDtoCopyWithImpl<CourseDto>(this as CourseDto, _$identity);

  /// Serializes this CourseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseDto&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.courseDescription, courseDescription) || other.courseDescription == courseDescription));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courseTitle,courseDescription);

@override
String toString() {
  return 'CourseDto(courseTitle: $courseTitle, courseDescription: $courseDescription)';
}


}

/// @nodoc
abstract mixin class $CourseDtoCopyWith<$Res>  {
  factory $CourseDtoCopyWith(CourseDto value, $Res Function(CourseDto) _then) = _$CourseDtoCopyWithImpl;
@useResult
$Res call({
 String courseTitle, String courseDescription
});




}
/// @nodoc
class _$CourseDtoCopyWithImpl<$Res>
    implements $CourseDtoCopyWith<$Res> {
  _$CourseDtoCopyWithImpl(this._self, this._then);

  final CourseDto _self;
  final $Res Function(CourseDto) _then;

/// Create a copy of CourseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? courseTitle = null,Object? courseDescription = null,}) {
  return _then(_self.copyWith(
courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,courseDescription: null == courseDescription ? _self.courseDescription : courseDescription // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class CourseStudentDto implements CourseDto {
  const CourseStudentDto({required this.courseTitle, required this.courseDescription, required this.teacherName, this.teacherProfileImage, final  String? $type}): $type = $type ?? 'student';
  factory CourseStudentDto.fromJson(Map<String, dynamic> json) => _$CourseStudentDtoFromJson(json);

@override final  String courseTitle;
@override final  String courseDescription;
 final  String teacherName;
 final  String? teacherProfileImage;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of CourseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseStudentDtoCopyWith<CourseStudentDto> get copyWith => _$CourseStudentDtoCopyWithImpl<CourseStudentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseStudentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseStudentDto&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.courseDescription, courseDescription) || other.courseDescription == courseDescription)&&(identical(other.teacherName, teacherName) || other.teacherName == teacherName)&&(identical(other.teacherProfileImage, teacherProfileImage) || other.teacherProfileImage == teacherProfileImage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courseTitle,courseDescription,teacherName,teacherProfileImage);

@override
String toString() {
  return 'CourseDto.student(courseTitle: $courseTitle, courseDescription: $courseDescription, teacherName: $teacherName, teacherProfileImage: $teacherProfileImage)';
}


}

/// @nodoc
abstract mixin class $CourseStudentDtoCopyWith<$Res> implements $CourseDtoCopyWith<$Res> {
  factory $CourseStudentDtoCopyWith(CourseStudentDto value, $Res Function(CourseStudentDto) _then) = _$CourseStudentDtoCopyWithImpl;
@override @useResult
$Res call({
 String courseTitle, String courseDescription, String teacherName, String? teacherProfileImage
});




}
/// @nodoc
class _$CourseStudentDtoCopyWithImpl<$Res>
    implements $CourseStudentDtoCopyWith<$Res> {
  _$CourseStudentDtoCopyWithImpl(this._self, this._then);

  final CourseStudentDto _self;
  final $Res Function(CourseStudentDto) _then;

/// Create a copy of CourseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courseTitle = null,Object? courseDescription = null,Object? teacherName = null,Object? teacherProfileImage = freezed,}) {
  return _then(CourseStudentDto(
courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,courseDescription: null == courseDescription ? _self.courseDescription : courseDescription // ignore: cast_nullable_to_non_nullable
as String,teacherName: null == teacherName ? _self.teacherName : teacherName // ignore: cast_nullable_to_non_nullable
as String,teacherProfileImage: freezed == teacherProfileImage ? _self.teacherProfileImage : teacherProfileImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
@JsonSerializable()

class CourseTeacherDto implements CourseDto {
  const CourseTeacherDto({required this.courseTitle, required this.courseDescription, required this.studentCount, final  String? $type}): $type = $type ?? 'teacher';
  factory CourseTeacherDto.fromJson(Map<String, dynamic> json) => _$CourseTeacherDtoFromJson(json);

@override final  String courseTitle;
@override final  String courseDescription;
 final  int studentCount;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of CourseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseTeacherDtoCopyWith<CourseTeacherDto> get copyWith => _$CourseTeacherDtoCopyWithImpl<CourseTeacherDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseTeacherDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseTeacherDto&&(identical(other.courseTitle, courseTitle) || other.courseTitle == courseTitle)&&(identical(other.courseDescription, courseDescription) || other.courseDescription == courseDescription)&&(identical(other.studentCount, studentCount) || other.studentCount == studentCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,courseTitle,courseDescription,studentCount);

@override
String toString() {
  return 'CourseDto.teacher(courseTitle: $courseTitle, courseDescription: $courseDescription, studentCount: $studentCount)';
}


}

/// @nodoc
abstract mixin class $CourseTeacherDtoCopyWith<$Res> implements $CourseDtoCopyWith<$Res> {
  factory $CourseTeacherDtoCopyWith(CourseTeacherDto value, $Res Function(CourseTeacherDto) _then) = _$CourseTeacherDtoCopyWithImpl;
@override @useResult
$Res call({
 String courseTitle, String courseDescription, int studentCount
});




}
/// @nodoc
class _$CourseTeacherDtoCopyWithImpl<$Res>
    implements $CourseTeacherDtoCopyWith<$Res> {
  _$CourseTeacherDtoCopyWithImpl(this._self, this._then);

  final CourseTeacherDto _self;
  final $Res Function(CourseTeacherDto) _then;

/// Create a copy of CourseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? courseTitle = null,Object? courseDescription = null,Object? studentCount = null,}) {
  return _then(CourseTeacherDto(
courseTitle: null == courseTitle ? _self.courseTitle : courseTitle // ignore: cast_nullable_to_non_nullable
as String,courseDescription: null == courseDescription ? _self.courseDescription : courseDescription // ignore: cast_nullable_to_non_nullable
as String,studentCount: null == studentCount ? _self.studentCount : studentCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
