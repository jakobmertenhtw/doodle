import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_module/src/application/create_user_bloc/create_user_bloc.dart';
import 'package:user_module/src/application/user_bloc/user_bloc.dart';
import 'package:user_module/src/locator.dart';

class TeacherForm extends StatefulWidget {
  const TeacherForm({super.key});

  @override
  State<TeacherForm> createState() => _TeacherFormState();
}

class _TeacherFormState extends State<TeacherForm> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateUserBloc, CreateUserState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(() {}, (some) {
          some.fold(
            (failure) {
              String message = 'Es gab einen Fehler';
              // TODO: map error messages to specific strings
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message)));
            },
            (success) {
              Locator.get<UserBloc>().add(UserEvent.checkCurrentUser());
            },
          );
        });
      },
      builder: (context, state) {
        if (state.isSubmitting == true) return Center(child: CircularProgressIndicator(),);
        return Column(
          children: [
            Text("Dozent"),
            Form(
              child: TextFormField(
                controller: _nameController,
                onChanged: (_) {
                  BlocProvider.of<CreateUserBloc>(
                    context,
                  ).add(CreateUserEvent.changedName(_nameController.text));
                },
                decoration: InputDecoration(
                  label: Text(
                    "Voller Name",
                  ),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                BlocProvider.of<CreateUserBloc>(
                  context,
                ).add(CreateUserEvent.createTeacher());
              },
              child: Text(
                "Als Dozent registrieren",
              ),
            ),
          ],
        );
      },
    );
  }
}
