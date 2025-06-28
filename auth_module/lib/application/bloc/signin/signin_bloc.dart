import 'package:auth_module/domain/failures/auth_failures.dart';
import 'package:auth_module/domain/repositories/auth_repository.dart';
import 'package:auth_module/domain/value_objects/email_addresse.dart';
import 'package:auth_module/domain/value_objects/passwort.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  AuthRepository repository;
  SigninBloc(this.repository) : super(SigninState.initial()) {
    on<EmailChanged>((event, emit) {
      
    });

    on<PasswordChanged>((event, emit) {

    });

    on<SignInSubmit>((event, emit) {

    });
  }
}
