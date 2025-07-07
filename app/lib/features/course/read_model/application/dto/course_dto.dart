import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_dto.freezed.dart';
part 'course_dto.g.dart';

@freezed
sealed class CourseDto with _$CourseDto {
  const factory CourseDto.student({
    required String courseTitle,
    required String courseDescription,
    required String teacherName,
    String? teacherProfileImage,
  }) = CourseStudentDto;

  const factory CourseDto.teacher({
    required String courseTitle,
    required String courseDescription,
    required int studentCount,
  }) = CourseTeacherDto;

  factory CourseDto.fromJson(Map<String, dynamic> json) => _$CourseDtoFromJson(json);
}