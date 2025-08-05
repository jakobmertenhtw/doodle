import 'dart:async';

import 'package:auth_module/auth_module.dart';
import 'package:bloc/bloc.dart';
import 'package:doodle/features/auth/application/services/auth_service.dart';
import 'package:doodle/features/user/application/services/user_service.dart';
import 'package:event_bus/event_bus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_module/user_module.dart';

part 'current_user_event.dart';
part 'current_user_state.dart';
part 'current_user_bloc.freezed.dart';

class CurrentUserBloc extends Bloc<CurrentUserEvent, CurrentUserState> {
  final AuthService _authService;
  final UserService _userService;
  final EventBus _eventBus;

  late final StreamSubscription _deleteAccountEventSubscription;
  late final StreamSubscription _signoutEventSubscription;
  late final StreamSubscription _registerEventSubscription;
  late final StreamSubscription _signinEventSubscription;
  late final StreamSubscription _userCreatedSubscription;

  CurrentUserBloc(this._authService, this._userService, this._eventBus)
    : super(CurrentUserState.initial()) {

      _deleteAccountEventSubscription = _eventBus.on<UserDeleted>().listen((event){
        add(CurrentUserEvent.logoutTriggerReceived());
      });
      _signoutEventSubscription = _eventBus.on<UserLoggedOut>().listen((event) {
        add(CurrentUserEvent.logoutTriggerReceived());
      });
      _registerEventSubscription = _eventBus.on<UserRegistered>().listen((event) {
        add(CurrentUserEvent.checkCurrentUser());
      });
      _signinEventSubscription = _eventBus.on<UserLoggedIn>().listen((event) {
        add(CurrentUserEvent.checkCurrentUser());
      });
      _userCreatedSubscription = _eventBus.on<UserCreated>().listen((event) {
        add(CurrentUserEvent.checkCurrentUser());
      });


    on<CheckCurrentUser>((event, emit) async {
      final authResult = await _authService.getSignedInUser();
      if (authResult.isNone()) {
        emit(CurrentUserState.unauthenticated());
        return;
      }

      final UserCredentials credentials = authResult.getOrElse(
        () => throw Error(),
      );
      final userResult = await _userService.getUserById(credentials.id);
      userResult.fold(
        (failure) {
          if (failure is UserNotExists) {
            emit(CurrentUserState.authenticatedWithNoAccount(credentials));
          }
        },
        (user) {
          emit(CurrentUserState.authenticatedWithAccount(user));
        },
      );
    });

    on<LogoutTriggerReceived>((event, emit) {
      emit(CurrentUserState.unauthenticated());
    });
  }

  @override
  Future<void> close() {
    _deleteAccountEventSubscription.cancel();
    _signoutEventSubscription.cancel();
    _registerEventSubscription.cancel();
    _signinEventSubscription.cancel();
    _userCreatedSubscription.cancel();
    return super.close();
  }
}
