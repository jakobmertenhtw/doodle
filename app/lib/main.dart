import 'package:doodle/core/dependency_injection.dart';
import 'package:doodle/core/go_router.dart';
import 'package:doodle/core/presentation/blocs/current_user_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await setup();
  runApp(DoodleApp());
}

class DoodleApp extends StatelessWidget {
  const DoodleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator<CurrentUserBloc>(),
      child: GoRouterWidget(),
    );
  }
}
