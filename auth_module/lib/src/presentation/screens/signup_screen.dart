import 'package:auth_module/src/application/bloc/signup/signup_bloc.dart';
import 'package:auth_module/src/infrastructure/repositories/firebase_auth_repository.dart';
import 'package:auth_module/src/presentation/widgets/signup_form.dart';
import 'package:auth_module/src/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupBloc(Locator.get<FirebaseAuthRepository>()),
      child: SignupForm()
    );
  }
}
