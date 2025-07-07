import 'package:bloc/bloc.dart';
import 'package:course_module/course_module.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/features/course/command_model/application/command_handlers/create_course_handler.dart';
import 'package:doodle/features/course/command_model/application/commands/create_course_command.dart';
import 'package:doodle/features/user/application/api/user_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_course_event.dart';
part 'create_course_state.dart';
part 'create_course_bloc.freezed.dart';

class CreateCourseBloc extends Bloc<CreateCourseEvent, CreateCourseState> {
  final CreateCourseHandler _handler;
  final UserApi _userApi;
  CreateCourseBloc(this._handler, this._userApi)
    : super(CreateCourseState.initial()) {
    on<TitleChanged>((event, emit) {
      emit(
        state.copyWith(
          title: CourseTitle(event.input),
          showValueErrors: false,
          isSubmitting: false,
          failureOrSuccess: none(),
        ),
      );
    });
    on<DescriptionChanged>((event, emit) {
      emit(
        state.copyWith(
          description: CourseDescription(event.input),
          showValueErrors: false,
          isSubmitting: false,
          failureOrSuccess: none(),
        ),
      );
    });

    on<SubmitCreateCourseForm>((event, emit) async {
      emit(state.copyWith(isSubmitting: true));
      // TODO: do the submit logic

      if (!state.title.isValid() || !state.description.isValid()) {
        emit(state.copyWith(isSubmitting: false, showValueErrors: true));
        return;
      }
      CurrentSignedInUser currentUser = await _userApi
          .getCurrentSignedInUserOrCrash();
      if (currentUser.userType != CurrentSignedInUserType.teacher) {
        throw Error();
      }
      final command = CreateCourseCommand(
        teacherId: currentUser.id,
        title: state.title,
        description: state.description,
      );
      final result = await _handler.handle(command);
      emit(state.copyWith(failureOrSuccess: some(result), showValueErrors: false, isSubmitting: false));

    });
  }
}
