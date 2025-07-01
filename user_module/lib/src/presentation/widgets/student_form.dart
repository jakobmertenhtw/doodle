import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_module/src/application/create_user_bloc/create_user_bloc.dart';
import 'package:user_module/src/application/user_bloc/user_bloc.dart';
import 'package:user_module/src/locator.dart';

class StudentForm extends StatefulWidget {
  const StudentForm({super.key});

  @override
  State<StudentForm> createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
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
        if (state.isSubmitting == true)
          return Center(
            child: CircularProgressIndicator(),
          );

        return Column(
          children: [
            Text("Student"),
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
                ).add(CreateUserEvent.createStudent());
              },
              child: Text(
                "Als Student registrieren",
              ),
            ),
          ],
        );
      },
    );
  }
}
