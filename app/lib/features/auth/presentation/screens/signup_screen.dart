import 'package:doodle/core/dependency_injection.dart';
import 'package:doodle/features/auth/presentation/blocs/signup/signup_bloc.dart';
import 'package:doodle/features/auth/presentation/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SignupBloc>(),
      child: SignupForm()
    );
  }
}
