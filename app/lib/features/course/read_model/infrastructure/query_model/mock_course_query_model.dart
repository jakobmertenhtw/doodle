import 'dart:async';

import 'package:doodle/features/course/read_model/application/dto/course_dto.dart';
import 'package:doodle/features/course/read_model/application/query_model/course_query_model.dart';
import 'package:doodle/features/course/read_model/infrastructure/datasource/course_read_remote_datasource.dart';

class ImplCourseReadModel implements CourseQueryModel {
  final CourseReadRemoteDatasource _remoteDatasource;
  
  final _controller = StreamController<List<CourseDto>>.broadcast();

  @override
  Stream<List<CourseDto>> get onCourses => _controller.stream;

  List<CourseDto> _courses = [];
  @override
  List<CourseDto> get courses => _courses;

  @override
  set courses(List<CourseDto> value) {
    _courses = value;
    _controller.add(_courses);
  }

  ImplCourseReadModel(this._remoteDatasource);

  @override
  Future<List<CourseStudentDto>> byStudentId(String studentId) async {
    try {
      final List<CourseStudentDto> result = await _remoteDatasource.getCoursesForStudentById(studentId);
      _courses = result;
      return result;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<CourseTeacherDto>> byTeacherId(String teacherId) async {
    try {
      final List<CourseTeacherDto> result = await _remoteDatasource.getCoursesForTeacherById(teacherId);
      _courses = result;
      return result;
    } catch (_) {
      rethrow;
    }
  }
}
