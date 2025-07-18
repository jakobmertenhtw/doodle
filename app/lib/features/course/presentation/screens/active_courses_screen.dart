import 'package:doodle/core/dependency_injection.dart';
import 'package:doodle/core/presentation/blocs/current_user_bloc.dart';
import 'package:doodle/features/course/presentation/blocs/all_courses/all_courses_bloc.dart';
import 'package:doodle/features/course/presentation/screens/create_course_screen.dart';
import 'package:doodle/features/course/presentation/widgets/courses_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_module/user_module.dart';

class ActiveCoursesScreen extends StatelessWidget {
  const ActiveCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          locator<AllCoursesBloc>()..add(AllCoursesEvent.loadAllCourses()),
      child: Column(
        children: [
          BlocBuilder<CurrentUserBloc, CurrentUserState>(
            builder: (context, state) {
              if (state is AuthenticatedWithAccount &&
                  state.user.role == UserRole.teacher) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CreateCourseScreen(),
                      ),
                    );
                  },
                  child: Text("Create new course"),
                );
              }
              return Container();
            },
          ),
          Expanded(child: CoursesList()),
        ],
      ),
    );
  }
}
