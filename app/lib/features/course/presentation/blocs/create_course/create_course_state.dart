part of 'create_course_bloc.dart';

@freezed
abstract class CreateCourseState with _$CreateCourseState {

  const factory CreateCourseState({
    required CourseTitle title, 
    required CourseDescription description, 
    required bool isSubmitting, 
    required bool showValueErrors, 
    required Option<Either<CourseFailure, Unit>> failureOrSuccess
  }) = _CreateCourseState;

  factory CreateCourseState.initial() => CreateCourseState(
    title: CourseTitle(''), 
    description: CourseDescription(''), 
    isSubmitting: false, 
    showValueErrors: false, 
    failureOrSuccess: none()
  );
}
