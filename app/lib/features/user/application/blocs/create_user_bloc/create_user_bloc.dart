import 'package:auth_module/auth_module.dart' as auth;
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/features/auth/api/auth_module_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_module/user_module.dart';

part 'create_user_event.dart';
part 'create_user_state.dart';
part 'create_user_bloc.freezed.dart';

class CreateUserBloc extends Bloc<CreateUserEvent, CreateUserState> {
  final UserRepository _repo;
  final AuthModuleApi _authApi;

  CreateUserBloc(this._repo, this._authApi) : super(CreateUserState.initial()) {
    on<ChangedName>((event, emit) {
      emit(
        state.copyWith(
          fullName: FullName(event.name),
          showErrorMessages: false,
          failureOrSuccessOption: none(),
        ),
      );
    });

    on<ChangedDoctoralDegree>((event, emit) {
      emit(
        state.copyWith(
          doctoralDegree: DoctoralDegree(event.degree),
          showErrorMessages: false,
          failureOrSuccessOption: none(),
        ),
      );
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

      final auth.AuthObject currentAuthObject = await _authApi
          .getCurrentAuthenticatedUserOrCrash();
      late User user;

      if (state.role == UserRole.student) {
        user = User.createStudent(
          id: currentAuthObject.id,
          name: state.fullName,
          email: Email(currentAuthObject.email.getOrCrash()),
        );
      }
      if (state.role == UserRole.teacher) {
        user = User.createTeacher(
          id: currentAuthObject.id,
          name: state.fullName,
          email: Email(currentAuthObject.email.getOrCrash()),
        );
      }

      Either<UserFailure, Unit> result = await _repo.save(
        user,
      );
      emit(
        state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: some(result),
        ),
      );
    });

    on<ChangedUserRole>((event, emit) {
      emit(state.copyWith(role: event.role));
    });
  }
}
