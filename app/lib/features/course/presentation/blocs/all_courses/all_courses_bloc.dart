import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/features/course/read_model/application/dto/course_dto.dart';
import 'package:doodle/features/course/read_model/application/query_model/course_query_model.dart';
import 'package:doodle/features/user/api/user_module_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_module/user_module.dart';

part 'all_courses_event.dart';
part 'all_courses_state.dart';

part 'all_courses_bloc.freezed.dart';

class AllCoursesBloc extends Bloc<AllCoursesEvent, AllCoursesState> {
  CourseQueryModel _courseReadModel;
  UserModuleApi _userApi;
  StreamSubscription<List<CourseDto>>? _coursesSubscription;


  AllCoursesBloc(this._courseReadModel, this._userApi)
    : super(AllCoursesState.inital()) {
      _coursesSubscription = _courseReadModel.onCourses.listen((courses) {
        add(CoursesUpdated(courses));
    });

    on<LoadAllCourses>((event, emit) async {
      emit(state.copyWith(isLoading: true));

      // get the current user and check if teacher or student
      late List<CourseDto> courses;

      Either<UserFailure, User> result = await _userApi
          .getCurrentUserOrCrash();
      
      final User currentUser = result.getOrElse(() => throw Error());
      
      if (currentUser.role == UserRole.student) {
        courses = await _courseReadModel.byStudentId(currentUser.id);
      } else {
        courses = await _courseReadModel.byTeacherId(currentUser.id);
      }
      emit(state.copyWith(isLoading: false, courses: courses));
    });

    on<CoursesUpdated>((event, emit) {
      // the first emit is necessary, because otherwise bloc thinks the states are the same, becuase we are referencing to the same list (even when the list changed)
      emit(state.copyWith(isLoading: true));
      emit(state.copyWith(courses: event.courses.toList(), isLoading: false));
    });

  }

  @override
  Future<void> close() {
    _coursesSubscription?.cancel();
    return super.close();
  }
}