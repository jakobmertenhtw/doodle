import 'package:doodle/core/dependency_injection.dart';
import 'package:doodle/features/auth/presentation/blocs/signin/signin_bloc.dart';
import 'package:doodle/features/auth/presentation/widgets/signin_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SigninBloc>(),
      child: SigninForm()
    );
  }
}
