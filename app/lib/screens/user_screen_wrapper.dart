import 'package:flutter/material.dart';
import 'package:user_module/user_module.dart';

class UserScreenWrapper extends StatelessWidget {
  UserScreenWrapper({super.key});

  final Stream userStream = UserModule.listenToUserStream();

  @override
  Widget build(BuildContext context) {
    
    return StreamBuilder(
      stream: userStream,
      builder: (context, snapshot) {
        return CreateUserScreen();
      },
    );
  }
}
