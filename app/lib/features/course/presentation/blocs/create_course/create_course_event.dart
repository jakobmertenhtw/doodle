part of 'create_course_bloc.dart';

@freezed
class CreateCourseEvent with _$CreateCourseEvent {
  const factory CreateCourseEvent.titleChanged(String input) = TitleChanged;
  const factory CreateCourseEvent.descriptionChanged(String input) = DescriptionChanged;
  const factory CreateCourseEvent.submitCreateCourseForm() = SubmitCreateCourseForm;
}