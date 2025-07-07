

import 'package:course_module/course_module.dart';
import 'package:dartz/dartz.dart';
import 'package:doodle/features/course/command_model/application/command_handlers/command_handler.dart';
import 'package:doodle/features/course/command_model/application/commands/remove_student_command.dart';
import 'package:doodle/features/course/command_model/application/event_publisher/course_event_publisher.dart';

class RemoveStudentHandler implements CommandHandler<RemoveStudentCommand, CourseFailure> {
  
  final CourseRepository _repo;
  final CourseEventPublisher _publisher;

  RemoveStudentHandler(this._repo, this._publisher);
  
  @override
  Future<Either<CourseFailure, Unit>> handle(RemoveStudentCommand command) async {

    final result = await _repo.loadById(command.courseId);
    final course = result.fold(
      (failure) => throw Exception('Failed to load the course: $failure'), (course) => course);
    List<CourseEvent> events = course.removeStudent(command.studentId);
    return await _repo.save(course);
    // TODO: Implement the domain event with the event publisher

  }

}