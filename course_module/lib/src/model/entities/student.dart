

import 'package:course_module/src/event/course_events.dart';
import 'package:course_module/src/model/value_objects/course_grade.dart';
import 'package:ddd_core_module/entity.dart';

class Student extends Entity {

  @override
  final String id;
  CourseGrade? grade;

  Student(this.id);

  void apply(StudentGraded event) {
    if (event.studentId != id) return;
    grade = CourseGrade(event.grade);
  }
}