import 'package:auth_module/application/bloc/auth/auth_bloc.dart';
import 'package:auth_module/application/bloc/signup/signup_bloc.dart';
import 'package:auth_module/domain/failures/auth_failures.dart';
import 'package:auth_module/locator.dart';
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
              some.fold((failure) {

                String message = '';
                switch (state) {
                  case EmailAlreadyInUse(): 
                    message = 'Die E-Mail existiert bereits.'; 
                    break;
                  default: 
                    message = 'Es gab einen Fehler';
                }
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message))
                );
              }, (success) {
                Locator.get<AuthBloc>().add(AuthEvent.checkAuth());
              },);
            },
          );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text("Sign Up")),
          body: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  onChanged: (_) {},
                  decoration: InputDecoration(label: Text("E-Mail-Adresse")),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  onChanged: (_) {},
                  decoration: InputDecoration(label: Text("Passwort")),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
