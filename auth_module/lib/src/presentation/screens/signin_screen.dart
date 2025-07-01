import 'package:auth_module/src/application/bloc/signin/signin_bloc.dart';
import 'package:auth_module/src/infrastructure/repositories/firebase_auth_repository.dart';
import 'package:auth_module/src/presentation/widgets/signin_form.dart';
import 'package:auth_module/src/locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninBloc(Locator.get<FirebaseAuthRepository>()),
      child: SigninForm()
    );
  }
}
