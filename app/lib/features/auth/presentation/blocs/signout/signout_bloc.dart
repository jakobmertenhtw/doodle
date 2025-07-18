import 'package:bloc/bloc.dart';
import 'package:doodle/features/auth/application/services/auth_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signout_event.dart';
part 'signout_state.dart';

part 'signout_bloc.freezed.dart';

class SignoutBloc extends Bloc<SignoutEvent, SignoutState> {
  final AuthService _service;
  SignoutBloc(this._service) : super(SignoutState.initial()) {
    on<SignOut>((event, emit) async {
      await _service.signOut();
    });
    on<DeleteAccount>((event, emit) async {
      await _service.deleteCurrentSignedInUser();
    });
  }
}
