part of 'all_courses_bloc.dart';

@freezed
class AllCoursesEvent with _$AllCoursesEvent{
  const factory AllCoursesEvent.loadAllCourses() = LoadAllCourses;
  const factory AllCoursesEvent.coursesUpdated(List<CourseDto> courses) = CoursesUpdated;
}
