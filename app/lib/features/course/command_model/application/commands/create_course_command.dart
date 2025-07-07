


import 'package:course_module/course_module.dart';

class CreateCourseCommand {
  final String teacherId;
  final CourseTitle title;
  final CourseDescription description;

  CreateCourseCommand({
    required this.teacherId,
    required this.title, 
    required this.description
  });
}