// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseStudentDto _$CourseStudentDtoFromJson(Map<String, dynamic> json) =>
    CourseStudentDto(
      courseTitle: json['courseTitle'] as String,
      courseDescription: json['courseDescription'] as String,
      teacherName: json['teacherName'] as String,
      teacherProfileImage: json['teacherProfileImage'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CourseStudentDtoToJson(CourseStudentDto instance) =>
    <String, dynamic>{
      'courseTitle': instance.courseTitle,
      'courseDescription': instance.courseDescription,
      'teacherName': instance.teacherName,
      'teacherProfileImage': instance.teacherProfileImage,
      'runtimeType': instance.$type,
    };

CourseTeacherDto _$CourseTeacherDtoFromJson(Map<String, dynamic> json) =>
    CourseTeacherDto(
      courseTitle: json['courseTitle'] as String,
      courseDescription: json['courseDescription'] as String,
      studentCount: (json['studentCount'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CourseTeacherDtoToJson(CourseTeacherDto instance) =>
    <String, dynamic>{
      'courseTitle': instance.courseTitle,
      'courseDescription': instance.courseDescription,
      'studentCount': instance.studentCount,
      'runtimeType': instance.$type,
    };
