import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_failures.freezed.dart';

@freezed
class CourseFailure with _$CourseFailure{
  const factory CourseFailure.serverError() = ServerError;
  const factory CourseFailure.notFound(String courseId) = CourseNotFound;
}