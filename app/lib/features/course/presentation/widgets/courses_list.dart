import 'package:doodle/features/course/presentation/blocs/all_courses/all_courses_bloc.dart';
import 'package:doodle/features/course/read_model/application/dto/course_dto.dart';
import 'package:doodle/features/course/presentation/widgets/course_student.dart';
import 'package:doodle/features/course/presentation/widgets/course_teacher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursesList extends StatelessWidget {
  const CoursesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllCoursesBloc, AllCoursesState>(
      builder: (context, state) {
        print("bloc triggered");
        if (state.isLoading == true)
          return Center(child: CircularProgressIndicator());
        if (state.courses.isEmpty) return Container();
        return ListView.builder(
          itemCount: state.courses.length,
          itemBuilder: (context, index) {
            final course = state.courses[index];

            if (course is CourseStudentDto) {
              return CourseStudentView.CourseStudentView(course: course);
            } else if (course is CourseTeacherDto) {
              return CourseTeacherView(course: course);
            } else {
              return Container();
            }
          },
        );
      },
    );
  }
}
