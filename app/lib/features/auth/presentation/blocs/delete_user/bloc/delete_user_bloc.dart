import 'package:bloc/bloc.dart';
import 'package:doodle/features/auth/application/services/auth_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_user_event.dart';
part 'delete_user_state.dart';

part 'delete_user_bloc.freezed.dart';

class DeleteUserBloc extends Bloc<DeleteUserEvent, DeleteUserState> {
  final AuthService _service;
  DeleteUserBloc(this._service) : super(DeleteUserState.initial()) {
    on<DeleteAccount>((event, emit) async {
      await _service.deleteCurrentSignedInUser();
    });
  }
}
