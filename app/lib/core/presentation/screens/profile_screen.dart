import 'package:doodle/core/dependency_injection.dart';
import 'package:doodle/features/auth/presentation/blocs/signout/signout_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<SignoutBloc>(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<SignoutBloc>(
                      context,
                    ).add(SignoutEvent.signOut());
                  },
                  child: Text(
                    "Sign Out",
                  ),
                );
              }
            ),
            SizedBox(
              height: 20,
            ),
            Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<SignoutBloc>(
                      context,
                    ).add(SignoutEvent.deleteAccount());
                  },
                  child: Text(
                    "Delete Account",
                  ),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
