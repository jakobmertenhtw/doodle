import 'package:auth_module/auth_module.dart';
import 'package:doodle/screens/home_screen.dart';
import 'package:doodle/screens/splash_screen.dart';
import 'package:doodle/screens/user_screen_wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:user_module/user_module.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // integrate the AuthModule
  AuthModule.configureAuthModule(FirebaseAuth.instance);
  UserModule.integrate();
  final Stream authStream = AuthModule.listenToAuthStream();
  runApp(MyApp(authStream: authStream));
}

class MyApp extends StatelessWidget {
  final Stream authStream;
  const MyApp({super.key, required this.authStream});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doodle',
      home: StreamBuilder(
        stream: authStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          }
          if (snapshot.hasData &&
              snapshot.data != null &&
              snapshot.data is UserAuthenticated) {
            final userId = (snapshot.data as UserAuthenticated).user.id;
            return FutureBuilder<UserExistsStatus>(
              future: UserModule.checkUserExistence(userId),
              builder: (context, userSnapshot) {
                if (userSnapshot.connectionState == ConnectionState.waiting) {
                  return SplashScreen();
                }
                if (userSnapshot.hasData && userSnapshot.data is UserDoesExist) {
                  return HomeScreen();
                } else {
                  return UserScreenWrapper();
                }
              },
            );
          } else {
            return SplashScreen();
          }
        },
      ),
    );
  }
}
