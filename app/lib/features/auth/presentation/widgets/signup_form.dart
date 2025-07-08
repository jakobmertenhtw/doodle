import 'package:auth_module/auth_module.dart';
import 'package:doodle/core/presentation/blocs/current_user_bloc.dart';
import 'package:doodle/features/auth/application/bloc/signup/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupBloc, SignupState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (some) {
            some.fold(
              (failure) {
                String message = '';
                switch (state) {
                  case EmailAlreadyInUse():
                    message = 'Die E-Mail existiert bereits.';
                    break;
                  default:
                    message = 'Es gab einen Fehler';
                }
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text(message)));
              },
              (success) {
                BlocProvider.of<CurrentUserBloc>(context).add(CurrentUserEvent.checkCurrentUser());
              },
            );
          },
        );
      },
      builder: (context, state) {
        if (state.isSubmitting == true) {
          return Scaffold(body: Center(child: CircularProgressIndicator()));
        }
        return Scaffold(
          appBar: AppBar(title: Text("Sign Up")),
          body: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  onChanged: (_) {
                    BlocProvider.of<SignupBloc>(
                      context,
                    ).add(SignupEvent.emailChanged(_emailController.text));
                  },
                  decoration: InputDecoration(label: Text("E-Mail-Adresse")),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  onChanged: (_) {
                    BlocProvider.of<SignupBloc>(context).add(
                      SignupEvent.passwordChanged(_passwordController.text),
                    );
                  },
                  decoration: InputDecoration(label: Text("Passwort")),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<SignupBloc>(
                      context,
                    ).add(SignupEvent.signUpSubmit());
                  },
                  child: Text("Submit Form"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
