import 'package:auth_module/domain/failures/auth_failures.dart';
import 'package:auth_module/domain/repositories/auth_repository.dart';
import 'package:auth_module/domain/value_objects/email_addresse.dart';
import 'package:auth_module/domain/value_objects/passwort.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  AuthRepository repository;
  SignupBloc(this.repository) : super(SignupState.initial()) {
    on<EmailChanged>((event, emit) {

    });
    on<PasswordChanged>((event, emit) {

    });
    on<SignUpSubmit>((event, emit) {

    });
  }
}
