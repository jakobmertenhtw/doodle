import 'package:dartz/dartz.dart';
import 'package:event_bus/event_bus.dart';
import 'package:user_module/user_module.dart';

class UserService {
  final UserRepository _userRepo;
    final EventBus _eventBus;

  UserService(this._userRepo, this._eventBus);
  Future<Either<UserFailure, User>> getUserById(String id) async =>
      await _userRepo.getById(id);

  Future<Either<UserFailure, Unit>> save(User user) async {
    final result = await _userRepo.save(user);

    result.fold((failure) {
      // TODO: Error handling
    }, (_) {
      final event = UserCreated(userId: user.id);
      _eventBus.fire(event);
    });

    return result;
  }

  Future<void> deleteUserById(String userId) async =>
      await _userRepo.deleteUser(userId);
}
