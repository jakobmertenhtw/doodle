

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:doodle/features/course/read_model/application/dto/course_dto.dart';

class CourseReadRemoteDatasource {

  Dio _dioApiClient;
  String _apiUrl;

  final List<CourseTeacherDto> course_teacher_list = [
    CourseDto.teacher(courseTitle: 'Test Course Teacher 1', courseDescription: 'test Course teacher 1', studentCount: 0) as CourseTeacherDto, 
    CourseDto.teacher(courseTitle: 'Test Course Teacher 2', courseDescription: 'test Course teacher 2', studentCount: 10) as CourseTeacherDto, 
    CourseDto.teacher(courseTitle: 'Test Course Teacher 3', courseDescription: 'test Course teacher 3', studentCount: 5) as CourseTeacherDto, 
  ];

  CourseReadRemoteDatasource(this._dioApiClient, this._apiUrl);

  Future<List<CourseStudentDto>> getCoursesForStudentById(String id) async {
    try {
      final result = await _dioApiClient.get('$_apiUrl/student/course/$id');
      return result.data.map((json) => CourseStudentDto.fromJson(json)).toList();
    } catch (_) {
      rethrow;
    }
  }

  Future<List<CourseTeacherDto>> getCoursesForTeacherById(String id) async {
    try {
      await Future.delayed(Duration(seconds: 2));
      return course_teacher_list;
    } catch (_) {
      rethrow;
    }
  }


}