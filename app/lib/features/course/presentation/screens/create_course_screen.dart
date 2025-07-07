import 'package:doodle/core/dependency_injection.dart';
import 'package:doodle/features/course/presentation/blocs/create_course/create_course_bloc.dart';
import 'package:doodle/features/course/presentation/widgets/create_course_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateCourseScreen extends StatelessWidget {
  const CreateCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<CreateCourseBloc>(),
      child: Scaffold(
        appBar: AppBar(title: Text("Create Course")),
        body: SafeArea(
          child: CreateCourseForm(),
        ),
      ),
    );
  }
}
