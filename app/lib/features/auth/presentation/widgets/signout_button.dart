import 'package:doodle/features/auth/presentation/blocs/signout/signout_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<SignoutBloc>(context).add(SignoutEvent.signOut());
      },
      child: Text("Sign Out"),
    );
  }
}
