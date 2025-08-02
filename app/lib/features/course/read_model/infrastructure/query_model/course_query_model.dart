import 'dart:async';

import 'package:doodle/features/course/read_model/application/dto/course_dto.dart';
import 'package:doodle/features/course/read_model/application/query_model/course_query_model.dart';
import 'package:doodle/features/course/read_model/infrastructure/datasource/course_read_local_datasource.dart';
import 'package:doodle/features/course/read_model/infrastructure/datasource/course_read_remote_datasource.dart';

class ImplCourseQueryModel implements CourseQueryModel {
  final CourseReadRemoteDatasource _remoteDatasource;
  final CourseReadLocalDatasource _localDatasource;
  ImplCourseQueryModel(this._remoteDatasource, this._localDatasource);

  final _controller = StreamController<List<CourseDto>>.broadcast();

  @override
  Future<List<CourseStudentDto>> byStudentId(String studentId) async {
    if (_isOnline()) {
      return await _remoteDatasource.getCoursesForStudentById(studentId);
    } else {
      return await _localDatasource.getCoursesForStudentById(studentId);
    }
  }
  bool _isOnline() {
    return true;
  }

  @override
  Future<List<CourseTeacherDto>> byTeacherId(String teacherId) async {
    throw UnimplementedError();
  }

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
}
