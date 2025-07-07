part of 'all_courses_bloc.dart';

@freezed
abstract class AllCoursesState with _$AllCoursesState{

  factory AllCoursesState({
    required List<CourseDto> courses, 
    required bool isLoading, 
  }) = _AllCoursesState;

  factory AllCoursesState.inital() => AllCoursesState(
    courses: List.empty(), 
    isLoading: false
  );
}
