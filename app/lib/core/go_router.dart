import 'dart:async';

import 'package:doodle/core/presentation/blocs/current_user_bloc.dart';
import 'package:doodle/core/presentation/screens/splash_screen.dart';
import 'package:doodle/features/auth/presentation/screens/signin_screen.dart';
import 'package:doodle/features/auth/presentation/screens/signup_screen.dart';
import 'package:doodle/features/course/presentation/screens/active_courses_screen.dart';
import 'package:doodle/features/user/presentation/screens/create_user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class GoRouterWidget extends StatelessWidget {
  const GoRouterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
            final router = configureGoRouter(context);
        return MaterialApp.router(
          title: 'Doodle',
          routerConfig: router,
        );
      }
    );
  }
}

GoRouter configureGoRouter(BuildContext context) {
  return GoRouter(
    initialLocation: '/',
    refreshListenable: BlocStreamNotifier(
      BlocProvider.of<CurrentUserBloc>(context).stream,
    ),
    redirect: (context, stateGo) {
      CurrentUserBloc? bloc;
      try {
        bloc = BlocProvider.of<CurrentUserBloc>(context, listen: false);
      } catch (_) {
        return null; // BlocProvider noch nicht verfügbar
      }

      final blocState = bloc.state;
      if (blocState is UnauthenticatedUser) return '/';
      if (blocState is AuthenticatedWithNoAccount) return '/create-user';
      if (blocState is AuthenticatedWithAccount) return '/home';
      return null;
    },
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashScreen()),
      GoRoute(
        path: '/signin',
        builder: (context, state) => SigninScreen(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => SignupScreen(),
      ),
      GoRoute(
        path: '/create-user',
        builder: (context, state) => CreateUserScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => ActiveCoursesScreen(),
      ),
    ],
  );
}

class BlocStreamNotifier extends ChangeNotifier {
  late final StreamSubscription _subscription;

  BlocStreamNotifier(Stream stream) {
    // Sofort Listener benachrichtigen, um initialen Zustand zu triggern
    notifyListeners();
    _subscription = stream.listen((_) => notifyListeners());
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
