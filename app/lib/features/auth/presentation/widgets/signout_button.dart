import 'package:doodle/core/presentation/blocs/current_user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<CurrentUserBloc>(context).add(CurrentUserEvent.signOut());
      },
      child: Text("Sign Out"),
    );
  }
}
