

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:user_module/src/application/user_bloc/user_bloc.dart';
import 'package:user_module/src/domain/entities/user.dart';
import 'package:user_module/src/domain/repositories/student_repository.dart';
import 'package:user_module/src/domain/repositories/teacher_repository.dart';
import 'package:user_module/src/domain/user_failures.dart';
import 'package:user_module/src/infrastructure/student_repository.dart';
import 'package:user_module/src/infrastructure/teacher_repository.dart';
import 'package:user_module/src/locator.dart';

sealed class UserExistsStatus {}
class UserDoesNotExist extends UserExistsStatus {}
class UserDoesExist extends UserExistsStatus {
  final User user;
  UserDoesExist(this.user);
}


class UserModule {

  static void integrate() {
    setupDI();
  }

  static Future<UserExistsStatus> checkUserExistence(String id) async {
    Either<UserFailure, User> result = await Locator.get<StudentRepositoryImpl>().getStudentById(id);
    print("test");
    
    return result.fold((_) {
      return UserDoesNotExist();
    }, (user) {
      return UserDoesExist(user);
    });
  }

  static Stream<UserExistsStatus> listenToUserStream() async* {
    Bloc userBloc = Locator.get<UserBloc>();
    userBloc.add(UserEvent.checkCurrentUser());

    await for (final state in userBloc.stream) {
      switch (state) {
        case NoUser():
          yield UserDoesNotExist();
          break;
        case UserExists(:User user): 
          yield(UserDoesExist(user));
          break;
        default: 
          break;
      }
    }
  }


}

void setupDI() {

  Locator.register<StudentRepositoryImpl>(StudentRepositoryImpl());
  Locator.register<TeacherRepositoryImpl>(TeacherRepositoryImpl());

  Locator.register<UserBloc>(UserBloc(Locator.get<StudentRepositoryImpl>(), Locator.get<TeacherRepositoryImpl>()));
}