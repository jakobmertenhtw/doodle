import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/features/user/infrastructure/dto/user_dto.dart';
import 'package:user_module/user_module.dart';

class UserRepositoryImpl implements UserRepository {
  User? currentUser;

  @override
  Future<Either<UserFailure, User>> getById(String userId) async {
    try {
      final result = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();
      if (!result.exists) {
        return left(UserFailure.userNotExists());
      }
      return right(UserDto.fromFirestore(result.id, result.data()!).toDomain());
    } catch (e) {
      print(e);
      return left(UserFailure.serverError());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> save(User user) async {
    try {
      final userDto = UserDto.fromDomain(user);
      await FirebaseFirestore.instance
          .collection('users')
          .doc(user.id)
          .set(userDto.toFirestore());

      currentUser = user;
      return right(unit);
    } catch (_) {
      return left(UserFailure.serverError());
    }
  }

  @override
  Future<void> deleteUser(String userId) async {
    try {
      await FirebaseFirestore.instance.collection('users').doc(userId).delete();
      if (currentUser != null && currentUser!.id == userId) {
        currentUser = null;
      }
    } catch (e) {
      print('Fehler beim Löschen des Users: $e');
    }
  }
}
