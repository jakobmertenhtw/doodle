import 'package:doodle/features/course/presentation/blocs/create_course/create_course_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateCourseForm extends StatefulWidget {
  const CreateCourseForm({super.key});

  @override
  State<CreateCourseForm> createState() => _CreateCourseFormState();
}

class _CreateCourseFormState extends State<CreateCourseForm> {
  final TextEditingController _titleContoller = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: _titleContoller,
              decoration: const InputDecoration(
                hintText: 'Course Title',
                border: OutlineInputBorder(),
              ),
              onChanged: (_) {
                BlocProvider.of<CreateCourseBloc>(context).add(CreateCourseEvent.titleChanged(_titleContoller.text));
              },
            ),
            SizedBox(height: 30),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                hintText: 'Course Description',
                border: OutlineInputBorder(),
              ),
              onChanged: (_) {
                BlocProvider.of<CreateCourseBloc>(context).add(CreateCourseEvent.descriptionChanged(_descriptionController.text));
              },
              minLines: 3,
              maxLines: 6,
            ),

            SizedBox(height: 40), 
            ElevatedButton(onPressed: () {
              BlocProvider.of<CreateCourseBloc>(context).add(CreateCourseEvent.submitCreateCourseForm());
            }, child: Text("Create Course"))
          ],
        ),
      ),
    );
  }
}
