import 'package:auth_module/src/domain/entities/user.dart';
import 'package:auth_module/src/domain/repositories/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository repository;
  AuthBloc(this.repository) : super(AuthState.unauthenticated()) {
    on<CheckAuth>((event, emit) async {
      final Option<User> user = await repository.getCurrentUser();
      
      user.fold(() {
        emit(AuthState.unauthenticated());
      }, (user) {
        emit(AuthState.autenticated(user));
      });

    });
    on<SignOut>((event, emit) async {
      await repository.signOut();
      emit(AuthState.unauthenticated());
      
    });
  }
}
