import 'package:auth_module/domain/entities/user.dart';
import 'package:auth_module/domain/repositories/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository repository;
  AuthBloc(this.repository) : super(AuthState.unauthenticated()) {
    on<AuthEvent>((event, emit) {

    });
    on<SignOut>((event, emit) {
      
    });
  }
}
