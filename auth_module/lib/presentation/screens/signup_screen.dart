import 'package:auth_module/application/bloc/signup/signup_bloc.dart';
import 'package:auth_module/infrastructure/repositories/firebase_auth_repository.dart';
import 'package:auth_module/presentation/widgets/signup_form.dart';
import 'package:auth_module/locator.dart';
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
