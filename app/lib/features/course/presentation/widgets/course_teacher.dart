

import 'package:doodle/features/course/read_model/application/dto/course_dto.dart';
import 'package:flutter/material.dart';

class CourseTeacherView extends StatelessWidget {
  final CourseTeacherDto course;

  const CourseTeacherView({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, 
      height: 200, 
      decoration: BoxDecoration(
        color: Colors.green
      ),
      child: Column(
        children: [
          Text(course.courseTitle),
          Text(course.courseDescription), 
          Text(course.studentCount.toString()),
        ],
      )
    );
  }
}