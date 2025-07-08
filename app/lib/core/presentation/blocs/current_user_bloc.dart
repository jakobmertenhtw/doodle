import 'package:auth_module/auth_module.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_module/user_module.dart';

part 'current_user_event.dart';
part 'current_user_state.dart';
part 'current_user_bloc.freezed.dart';

class CurrentUserBloc extends Bloc<CurrentUserEvent, CurrentUserState> {

  final AuthRepository _authRepo;
  final UserRepository _userRepo;

  CurrentUserBloc(this._authRepo, this._userRepo) : super(CurrentUserState.initial()) {
    on<CheckCurrentUser>((event, emit) async {
      final authResult = await _authRepo.getCurrentSignedInUser();
      if (authResult.isNone()) {
        emit(CurrentUserState.unauthenticated());
        return;
      }

      final AuthObject auth = authResult.getOrElse(() => throw Error());
      // check if there is a user object for that id
      final userResult = await _userRepo.getById(auth.id);
      userResult.fold((failure) {
        if (failure is UserNotExists) {
          emit(CurrentUserState.authenticatedWithNoAccount(auth));
        }
      }, (user) {
        emit(CurrentUserState.authenticatedWithAccount(user));
      });
    });

    on<SignOut>((event, emit) async {
            await _authRepo.signOut();
      emit(CurrentUserState.unauthenticated());
    });
  }
}
