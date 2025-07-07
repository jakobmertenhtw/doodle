

import 'package:doodle/features/course/read_model/application/dto/course_dto.dart';

abstract class CourseQueryModel {

  Stream<List<CourseDto>> get onCourses;
  set courses(List<CourseDto> courses);

  List<CourseDto> get courses;

  Future<List<CourseTeacherDto>> byTeacherId(String teacherId);
  Future<List<CourseStudentDto>> byStudentId(String studentId);
}