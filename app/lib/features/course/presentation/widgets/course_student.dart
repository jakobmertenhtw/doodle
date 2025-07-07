

import 'package:doodle/features/course/read_model/application/dto/course_dto.dart';
import 'package:flutter/material.dart';

class CourseStudentView extends StatelessWidget {
  final CourseStudentDto course;

  const CourseStudentView.CourseStudentView({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      height: 200, 
      decoration: BoxDecoration(
        color: Colors.red
      ),
      child: Column(
        children: [
          Text(course.courseTitle),
          Text(course.courseDescription), 
          Text(course.teacherName),
        ],
      )
    );
  }
}