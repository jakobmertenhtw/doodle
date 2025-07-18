import 'package:bloc/bloc.dart';
import 'package:doodle/features/auth/api/doodle_auth_api.dart';
import 'package:doodle/features/user/application/services/user_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_module/user_module.dart';

part 'create_user_event.dart';
part 'create_user_state.dart';
part 'create_user_bloc.freezed.dart';

class CreateUserBloc extends Bloc<CreateUserEvent, CreateUserState> {
  final UserService _service;
  final DoodleAuth _authApi;

  CreateUserBloc(this._service, this._authApi)
    : super(CreateUserState.initial()) {
    on<ChangedName>((event, emit) {
      emit(
        state.copyWith(
          fullName: FullName(event.name),
          showErrorMessages: false,
        ),
      );
    });

    on<ChangedDoctoralDegree>((event, emit) {
      emit(
        state.copyWith(
          doctoralDegree: DoctoralDegree(event.degree),
          showErrorMessages: false,
        ),
      );
    });

    on<ChangedUserRole>((event, emit) {
      emit(state.copyWith(role: event.role));
    });

    on<CreateUser>((event, emit) async {
      emit(state.copyWith(isSubmitting: true));

      if (!state.fullName.isValid()) {
        emit(state.copyWith(showErrorMessages: true, isSubmitting: false));
        return;
      }
      if (state.role == UserRole.teacher && !state.doctoralDegree.isValid()) {
        emit(state.copyWith(showErrorMessages: true, isSubmitting: false));
        return;
      }

      final String currentUserId = await _authApi
          .getCurrentSignedInUserIdOrCrash();

      final String currentUserEmail = await _authApi
          .getCurrentSignedInUserEmailOrCrash();
      late User user;

      if (state.role == UserRole.student) {
        user = User.createStudent(
          id: currentUserId,
          name: state.fullName,
          email: Email(currentUserEmail),
        );
      }
      if (state.role == UserRole.teacher) {
        user = User.createTeacher(
          id: currentUserId,
          name: state.fullName,
          email: Email(currentUserEmail),
        );
      }
      await _service.save(
        user,
      );
      emit(
        state.copyWith(
          isSubmitting: false,
        ),
      );
    });
  }
}
