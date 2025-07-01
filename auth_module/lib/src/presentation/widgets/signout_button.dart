import 'package:auth_module/src/application/bloc/auth/auth_bloc.dart';
import 'package:auth_module/src/locator.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Locator.get<AuthBloc>().add(AuthEvent.signOut());
      },
      child: Text("Sign Out"),
    );
  }
}
