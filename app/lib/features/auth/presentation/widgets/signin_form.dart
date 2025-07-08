import 'package:auth_module/auth_module.dart';
import 'package:doodle/core/presentation/blocs/current_user_bloc.dart';
import 'package:doodle/features/auth/application/bloc/signin/signin_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninForm extends StatefulWidget {
  const SigninForm({super.key});

  @override
  State<SigninForm> createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninBloc, SigninState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (some) {
            some.fold(
              (failure) {
                String message = '';
                switch (state) {
                  case InvalidEmailAndPasswordMatch():
                    message =
                        'Die E-Mail und Passwort Kombination ist nicht korrekt';
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
          appBar: AppBar(title: Text("Sign In")),
          body: Form(
            autovalidateMode: state.showErrorMessage == true ? AutovalidateMode.always : AutovalidateMode.disabled,
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    return state.email.value.fold((failure) => failure.failure, (_) => null);
                  },
                  onChanged: (_) {
                    BlocProvider.of<SigninBloc>(
                      context,
                    ).add(SigninEvent.emailChanged(_emailController.text));
                  },
                  decoration: InputDecoration(label: Text("E-Mail-Adresse")),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    
                  },
                  onChanged: (_) {
                    BlocProvider.of<SigninBloc>(
                      context,
                    ).add(
                      SigninEvent.passwordChanged(_passwordController.text),
                    );
                  },
                  decoration: InputDecoration(label: Text("Passwort")),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<SigninBloc>(
                      context,
                    ).add(SigninEvent.signInSubmit());
                  },
                  child: Text("Sign In"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
