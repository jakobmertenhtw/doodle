import 'package:auth_module/auth_module.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_module/src/domain/entities/user.dart';
import 'package:user_module/src/domain/repositories/student_repository.dart';
import 'package:user_module/src/domain/repositories/teacher_repository.dart';
import 'package:user_module/src/domain/user_failures.dart';
import 'package:user_module/src/domain/value_objects/full_name.dart';
import 'package:user_module/src/domain/value_objects/profile_image.dart';

part 'create_user_event.dart';
part 'create_user_state.dart';
part 'create_user_bloc.freezed.dart';

class CreateUserBloc extends Bloc<CreateUserEvent, CreateUserState> {
  final StudentRepository _studentRepository;
  final TeacherRepository _teacherRepository;

  CreateUserBloc(this._studentRepository, this._teacherRepository)
    : super(CreateUserState.initial()) {
    on<ChangedName>((event, emit) {
      emit(state.copyWith(fullName: FullName(event.name)));
    });

    on<CreateStudent>((event, emit) async {
      emit(state.copyWith(isSubmitting: true));

      if (!state.fullName.isValid()) {
        emit(state.copyWith(showErrorMessages: true));
      }

      String currentSignedInUserId = AuthModule.getCurrentSignedInUserId();
      User student = User(
        currentSignedInUserId,
        state.fullName,
        ProfileImage(''),
        USERTYPE.student
      );
      Either<UserFailure, Unit> result = await _studentRepository.createStudent(
        student,
      );
      emit(
        state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: some(result),
        ),
      );
    });

    on<CreateTeacher>((event, emit) async {
      emit(state.copyWith(isSubmitting: true));
      if (!state.fullName.isValid()) {
        emit(state.copyWith(showErrorMessages: true));
      }

      String currentSignedInUserId = AuthModule.getCurrentSignedInUserId();

      User teacher = User(
        currentSignedInUserId,
        state.fullName,
        ProfileImage(''),
        USERTYPE.teacher
      );

      Either<UserFailure, Unit> result = await _teacherRepository.createTeacher(
        teacher,
      );

      emit(
        state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: some(result),
        ),
      );
    });
  }
}
