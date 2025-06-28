import 'package:auth_module/api/auth_module.dart';
import 'package:doodle/screens/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // integrate the AuthModule
  AuthModule.configureAuthModule(FirebaseAuth.instance);
  Stream authStream = AuthModule.listenToAuthStream();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Doodle', home: SplashScreen(),);
  }
}
