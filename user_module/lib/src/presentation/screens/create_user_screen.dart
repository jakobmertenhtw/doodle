import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_module/src/application/create_user_bloc/create_user_bloc.dart';
import 'package:user_module/src/infrastructure/student_repository.dart';
import 'package:user_module/src/infrastructure/teacher_repository.dart';
import 'package:user_module/src/locator.dart';
import 'package:user_module/src/presentation/widgets/student_form.dart';
import 'package:user_module/src/presentation/widgets/teacher_form.dart';

class CreateUserScreen extends StatefulWidget {
  const CreateUserScreen({super.key});

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  bool isStudent = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateUserBloc(
        Locator.get<StudentRepositoryImpl>(),
        Locator.get<TeacherRepositoryImpl>(),
      ),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 40),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isStudent = true;
                      });
                    },
                    child: Text(
                      "Student",
                      style: TextStyle(
                        color: isStudent == true ? Colors.blue : Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isStudent = false;
                      });
                    },
                    child: Text(
                      "Professor",
                      style: TextStyle(
                        color: isStudent == false ? Colors.blue : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,), 
              isStudent == true ? StudentForm() : TeacherForm()
            ],
          ),
        ),
      ),
    );
  }
}
