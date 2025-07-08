import 'package:doodle/features/user/application/blocs/create_user_bloc/create_user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_module/user_module.dart';

class UserTypeChangeWidget extends StatelessWidget {
  const UserTypeChangeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateUserBloc, CreateUserState>(
      builder: (context, state) {
        return Row(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  state.role == UserRole.student ? Colors.blue : Colors.white,
                ),
              ),
              onPressed: () {
                BlocProvider.of<CreateUserBloc>(
                  context,
                ).add(CreateUserEvent.changedUserRole(UserRole.student));
              },
              child: Text("Student"),
            ),
            SizedBox(width: 10),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(
                  state.role == UserRole.student ? Colors.white : Colors.blue,
                ),
              ),
              onPressed: () {
                BlocProvider.of<CreateUserBloc>(
                  context,
                ).add(CreateUserEvent.changedUserRole(UserRole.teacher));
              },
              child: Text(
                "Dozent",
              ),
            ),
          ],
        );
      },
    );
  }
}
