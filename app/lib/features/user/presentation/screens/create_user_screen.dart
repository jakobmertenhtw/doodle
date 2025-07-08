import 'package:doodle/core/dependency_injection.dart';
import 'package:doodle/features/user/application/blocs/create_user_bloc/create_user_bloc.dart';
import 'package:doodle/features/user/presentation/widgets/create_user_form.dart';
import 'package:doodle/features/user/presentation/widgets/user_type_change_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateUserScreen extends StatelessWidget {
  const CreateUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<CreateUserBloc>(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.all(20),
            child: Column(
              children: [
                UserTypeChangeWidget(),
                SizedBox(height: 40),
                CreateUserForm(),
                SizedBox(height: 40),
                Builder(
                  builder: (context) {
                    return BlocBuilder<CreateUserBloc, CreateUserState>(
                      builder: (context, state) {
                        if (state.isSubmitting) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CreateUserBloc>(
                              context,
                            ).add(CreateUserEvent.createUser());
                          },
                          child: Text("Erstellen"),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
